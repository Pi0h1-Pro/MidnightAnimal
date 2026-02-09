if (global.xbox == 1)
{
	if (checkbutton(0, getid(5)))
	{
		if (presstart == 0)
		{
			presstart = 1;
			scrXboxScoreDetailsStart();
		}
	}
	else
		presstart = 0;
}

SteamRunCallbacks();
if (!surface_exists(global.surf1))
{
	global.surf1 = surface_create(room_width, room_height);
	surface_set_target(global.surf1);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
surface_set_target(global.surf1);
draw_clear_alpha(c_black, 0);

// Draw lines.
draw_set_blend_mode(bm_subtract);
i = 0;
repeat (7)
{
	draw_rectangle_color(0, 11 + i * 5, 120 + combox + lengthdir_x(8, dir + i * 45), 14 + i * 5, c_black, c_dkgray, c_black, c_dkgray, 0);
	i += 1;
}

i = 0;
repeat (6)
{
	draw_rectangle_color(__view_get( e__VW.WView, 0 ) - 120 + combox, 11 + i * 5, __view_get( e__VW.WView, 0 ), 14 + i * 5, c_black, c_dkgray, c_dkgray, c_black, 0);
	
	// draw_rectangle_color(0, 217 + i * 5, 120 + ammox + lengthdir_x(8, dir + i * 45), 220 + i * 5, c_dkgray, c_black, c_black, c_dkgray, 0)
	i += 1;
}
draw_set_blend_mode(bm_normal);

if (combox < 0)
	combox += 8;
else if (combox > -160)
	combox -= 8;

/*
i = 0 repeat(7) {
    draw_line_color(0, 12 + i * 3, 400, 12 + i * 3, merge_color(c_black, c_fuchsia, 0.25 + lengthdir_x(0.25, dir2 * 4 + i * 35)),
        merge_color(c_black, c_fuchsia, 0.25 + lengthdir_x(0.25, dir2 * 4 + i * 35) + 180))
    i += 1
}
*/

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

// Draw playstyle.
draw_set_halign(fa_center);
if (gradeon == 1)
{
	// draw_set_color(merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.5, dir2 * 10)))
	// draw_text(240, 22, "PLAY STYLE:#" + '"' + type + '"')
	draw_set_color(merge_color(c_white, c_white, 0.5 + lengthdir_x(0.5, dir2 * 10 + 180)));
	draw_text(239, 22, string_hash_to_newline("PLAY STYLE:#" + "\"" + type + "\""));
}

/*
//Draw list of feats.
draw_set_font(fntFeats)
if dir < 180 dir += 18
else {
    if current < ds_list_size(global.bonuslist) current += 1 dir = 0
}
draw_y = 220
i = current - 1
cdir += 4
times = current - 1
if times > 13 times = 13
ii = 0

//Draw feats.
repeat(times) {
    draw_set_color(merge_color(merge_color(c_fuchsia, c_orange, 0.5 + lengthdir_x(0.5, cdir + i * 20)), c_aqua, 0.5 + lengthdir_x(0.5, cdir + i * 30)))
    mystring = ds_list_find_value(global.bonuslist, i)
    draw_text(160 - string_width(mystring) * 0.5 + lengthdir_x(3, cdir + i * 40), 190 - ii * (12), mystring) //460
    i -= 1
    ii += 1
}

if current < ds_list_size(global.bonuslist) {
    times = 1 + abs(lengthdir_y(19, dir))
    mystring = ds_list_find_value(global.bonuslist, current)
    i = 0
    
    //Set style of popups.
    draw_set_font(fntFeatsLarge)
    repeat(times) {
        draw_set_color(merge_color(merge_color(c_white, c_white, 0.5 + lengthdir_x(0.5, cdir * 3)), merge_color(c_orange, c_aqua, 0.75 + lengthdir_x(0.25, cdir * 2)), 1 * (times / 20)))
        draw_text_transformed(160 - string_width(mystring) * 0.325, 210 + i * 0.1, mystring, 0.65 + i * 0.005, 1 + i * 0.025, 0) //460
        i += 1
    }
} else */
//{
if (gradex < 380)
	gradex += 10; // 280
else
{
	if (gradeon == 0)
	{
		gradeon = 1;
		if (grade == "S")
			SteamSetAchievement("ACH_ACED_IT");
		scrCheckGrades();
		alpha = 1;
	}
	
	//    }
	
	// Draw grade.
	draw_set_font(fntGrading);
	mystring = "GRADE:";
	draw_set_color(merge_color(c_yellow, c_fuchsia, 0.5 + lengthdir_x(0.5, cdir * 3)));
	draw_text_transformed(gradex - string_width(string_hash_to_newline(mystring)) * 0.5, 215, string_hash_to_newline(mystring), 1, 1, 0);
	if (gradeon == 1)
	{
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
		draw_text_transformed(390, 220, string_hash_to_newline(grade), 0.95 + amount * 0.05, 0.9 + amount * 0.1, 0);
	}
}
surface_reset_target();

/* */
/*  */
