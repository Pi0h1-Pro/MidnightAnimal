fastforward = mouse_check_button(mb_left);
SteamRunCallbacks();

// Create global.surf1.
if (!surface_exists(global.surf1))
{
	global.surf1 = surface_create(room_width, room_height);
	surface_set_target(global.surf1);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}

surface_set_target(global.surf1);
draw_clear_alpha(c_black, 0);

// Draw scene name and time.
draw_set_font(fntDetails);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

// draw_set_color(merge_color(c_white, c_dkgray, 0.5 + lengthdir_x(0.5, dir2 * 10)))
// draw_text(11, 22, "SCENE: " + '"' + level + '"' + "#TIME: " + string(floor(time / 60)) + "s")
draw_set_color(c_white);
draw_text(12, 22, string_hash_to_newline("SCENE: " + "\"" + level + "\"" + "#TIME: " + string(floor(time / 60)) + "s"));

// Draw highscore and current score.
draw_set_halign(fa_right);

// draw_set_color(merge_color(c_white, c_dkgray, 0.5 + lengthdir_x(0.5, dir2 * 10)))
// draw_text(463, 22, "HIGHSCORE: " + string(highscore) + "#SCORE: " + string(myscore))
draw_set_color(c_white);
draw_text(462, 22, string_hash_to_newline("HIGHSCORE: " + string(highscore) + "#SCORE: " + string(myscore)));

// Draw score text.
draw_set_font(fntPointShow);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
i = 0;

repeat (6)
{
	// Set x position of score text.
	start_x = 20 + string_width(string_hash_to_newline(category[i])) * 0.5;
	
	if (i < current + 1)
	{
		ii = 0;
		repeat (1 + abs(lengthdir_y(15, temp[i])))
		{
			draw_set_color(merge_color(merge_color(c_orange, c_fuchsia, 0.5 - lengthdir_y(0.5, dir * 8 + i * 25)), merge_color(c_silver, c_yellow, 0.25 - lengthdir_y(0.25, dir * 12 + i * 25)), 0.5 - lengthdir_x(0.5, ii * (180 / 16))));
			dist = ((64 + i * 16) - (room_height / 2)) * 0.25;
			
			// Draw score text.
			draw_text_transformed(start_x, 64 + i * 16 - lengthdir_y(dist, 45 - lengthdir_x(45, ii * (180 / 16))), string_hash_to_newline(category[i]), 1 + abs(lengthdir_y(0.25, 45 - lengthdir_x(45, ii * (180 / 16)))), 1 + abs(lengthdir_y(1, 45 - lengthdir_x(45, ii * (180 / 16)))), 0);
			ii += 1;
		}
		
		// Allow fastforward of scores.
		if (temp[i] < 180)
			temp[i] += 4 + fastforward * 6;
		else
		{
			if (fastforward)
				drawbonus[i] = bonus[i];
			if (drawbonus[i] < bonus[i] - 200)
				drawbonus[i] += 100;
			else
			{
				if (drawbonus[i] < bonus[i] - 100)
					drawbonus[i] += 10;
				else
				{
					if (drawbonus[i] < bonus[i] - 5)
						drawbonus[i] += 5;
					else
						drawbonus[i] = bonus[i];
				}
			}
			
			// Draw numerical scores.
			draw_set_halign(fa_right);
			draw_set_color(merge_color(c_red, c_black, 0.35 + lengthdir_x(0.35, dir * 24)));
			draw_text_transformed(444, 64 + i * 16, string_hash_to_newline(string(drawbonus[i])), 1, 1, 0);
			draw_set_color(merge_color(c_aqua, c_teal, 0.35 + lengthdir_x(0.35, dir * 24)));
			draw_text_transformed(442, 64 + i * 16, string_hash_to_newline(string(drawbonus[i])), 1, 1, 0);
			draw_set_color(c_white);
			draw_text_transformed(440, 64 + i * 16, string_hash_to_newline(string(drawbonus[i])), 1, 1, 0);
			draw_set_halign(fa_center);
			if (current == i && drawbonus[i] == bonus[i])
				current += 1;
		}
	}
	i += 1;
}

if (drawbonus[5] == bonus[5])
{
	if (factor < 1)
		factor += 0.025;
	if (gradex < 390)
	{
		if (finalx > 400)
			finalx -= 10;
		
		gradex += 40;
	}
	else
	{
		if (gradeon == 0)
		{
			sound_play(sndCriticalKnifeAC);
			sound_play(sndCriticalKnifeSkyrim);
			gradeon = 1;
			alpha = 1;
			if (grade == "S")
				SteamSetAchievement("ACH_ACED_IT");
			scrCheckGrades();
		}
	}
	
	// Draw grade.
	draw_set_halign(fa_center);
	draw_set_font(fntGrading);
	mystring = "GRADE:";
	
	// Shadow.
	draw_set_color(merge_color(c_maroon, c_red, amount));
	draw_text_transformed(gradex - string_width(string_hash_to_newline(mystring)) * 0.5 + 1, 216, string_hash_to_newline(mystring), 1, 1, 0);
	
	// Text.
	draw_set_color(merge_color(c_white, c_silver, amount));
	draw_text_transformed(gradex - string_width(string_hash_to_newline(mystring)) * 0.5, 215, string_hash_to_newline(mystring), 1, 1, 0);
	
	draw_set_font(fntGrade);
	amount = -1 + lengthdir_x(2, cdir);
	if (amount < 0)
		amount = 0;
	
	// Set colours of S rank and normal rank.
	if (grade == "S")
	{
		draw_set_color(merge_color(c_yellow, c_white, amount));
	}
	else
		draw_set_color(merge_color(c_red, c_maroon, amount));
	
	draw_set_halign(fa_left);
	
	// Draw final grade.
	draw_text_transformed(finalx, 220, string_hash_to_newline(grade), 0.95 + amount * 0.05, 0.9 + amount * 0.1, 0);
}

if (gradeon == 1)
{
	// Draw playstyle.
	draw_set_font(fntDetails);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	
	// draw_set_color(merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.5, dir2 * 10)))
	// draw_text(240, 22, "PLAY STYLE:#" + '"' + type + '"')
	draw_set_color(merge_color(c_white, c_white, 0.5 + lengthdir_x(0.5, dir2 * 10 + 180)));
	draw_text(239, 22, string_hash_to_newline("PLAY STYLE:#" + "\"" + type + "\""));
	
	draw_set_halign(fa_left);
	rotate = 0;
	times = lengthdir_x(11, dir * 15);
	if (times < 1)
		times = 1;
	
	// Draw final score.
	
	// If the score is lower than the expected score, make the score red to indicate failure.
	if (global.myscore < real(string_digits(parscore)))
		c = merge_color(c_red, c_fuchsia, 0.5 + lengthdir_x(0.5, dir)); // Otherwise, set the score to a pinkish orange tint.
	else
		c = merge_color(merge_color(c_white, c_teal, 0.5 + lengthdir_x(0.5, dir)), c_fuchsia, 0.2 + lengthdir_x(0.2, dir));
	
	// Draw the score text.
	repeat (times)
	{
		draw_set_font(fntLevelScore);
		draw_set_color(merge_color(c_orange, c_yellow, 0.5 - lengthdir_x(0.5, i * 16)));
		draw_text_transformed(20, 213, string_hash_to_newline("LEVEL SCORE"), 1, 1, image_angle);
		
		draw_set_font(fntScoreStats);
		draw_set_color(merge_color(c_yellow, c_white, 0.5 - lengthdir_x(0.5, i * 16)));
		draw_text_transformed(20, 228, string_hash_to_newline(string(global.myscore) + parscore), 1, 1, image_angle); // lengthdir_x(2, dir * 2))
		i += 1;
	}
}

surface_reset_target();

