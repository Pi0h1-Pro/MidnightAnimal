if (instance_exists(objPlayer))
{
	width = display_get_width();
	height = display_get_height();
	factor = 1;
	
	if (global.xbox == 1)
	{
		if (checkbutton(0, getid(9)))
		{
			global.mousex = objPlayer.x + rightthumb_x(0) * 0.009;
			global.mousey = objPlayer.y - rightthumb_y(0) * 0.006;
		}
		else
		{
			if (objPlayer.object_index == objPlayerMouse || objPlayer.object_index == objPlayerMouseHouse || objPlayer.object_index == objPlayerBiker || objPlayer.object_index == objPlayerBikerHouse)
			{
				global.mousex = objPlayer.x + lengthdir_x(64, objPlayer.dir);
				global.mousey = objPlayer.y + lengthdir_y(64, objPlayer.dir);
			}
			else
			{
				global.mousex = objPlayer.x;
				global.mousey = objPlayer.y;
			}
		}
	}
	else
	{
		if (keyboard_check_direct(vk_shift))
			factor = 1.8;
		global.mousex = objPlayer.x + ((display_mouse_get_x() - width * 0.5) * (__view_get( e__VW.WView, 0 ) / width)) * factor;
		global.mousey = objPlayer.y + ((display_mouse_get_y() - height * 0.5) * (__view_get( e__VW.HView, 0 ) / height)) * factor;
	}
	
	x = global.mousex;
	y = global.mousey;
	if (instance_exists(global.enemy))
	{
		global.mousex = global.enemy.x;
		global.mousey = global.enemy.y;
	}
	else
		global.enemy = -1234;
}

if (!instance_exists(objMaskMenu) && !instance_exists(objPhoneConversation))
	global.time += 1;
if (instance_exists(objDizzy))
	exit;
if (blackx < 15)
	blackx += 1;
global.dir += 1;

if (action > 0)
{
	image_blend = merge_color(merge_color(c_aqua, c_fuchsia, 0.5 + lengthdir_x(0.5, global.dir * 3.27)), c_white, 0.5 + lengthdir_y(0.5, global.dir * 1.97));
	test = 1;
	if (!instance_exists(objPlayer))
		test = 0;
	
	if (instance_exists(objPlayerMouseHouse))
	{
		if (objPlayer.aimon == 0)
			test = 0;
	}
	
	if (test == 1)
	{
		draw_sprite_ext(sprCursorAction, action - 1, global.mousex + 1, global.mousey + 1, 1, 1, -__view_get( e__VW.Angle, 0 ), c_black, 0.5);
		draw_sprite_ext(sprCursorAction, action - 1, global.mousex, global.mousey, 1, 1, -__view_get( e__VW.Angle, 0 ), image_blend, 1);
	}
}

test = 1;

if (!instance_exists(objPlayer))
	test = 0;
if (instance_exists(objPlayerMouseHouse))
{
	if (objPlayer.aimon == 0)
		test = 0;
}

if (instance_exists(objPhoneConversation) || instance_exists(objFinalDialogue) || instance_exists(objFinalDialogue2))
	test = 0;
if (test == 1)
{
	draw_sprite_ext(sprite_index, image_index, global.mousex + 1, global.mousey + 1, 1, 1, -__view_get( e__VW.Angle, 0 ), c_black, 0.5);
	draw_set_blend_mode(bm_add);
	draw_sprite_ext(sprite_index, image_index, global.mousex, global.mousey, 1, 1, -__view_get( e__VW.Angle, 0 ), c_white, 1);
	draw_set_blend_mode(bm_normal);
}

with (objAnsweringMachine)
{
	if (active == 1 && sprite_index == sprDrawersH24Phone)
		draw_sprite(sprArrow, image_index * 2, x, y - 16 + lengthdir_x(3, global.dir * 6));
}
with (objPhone)
{
	if (called == 1 && answered == 0)
		draw_sprite_ext(sprArrow, 0, x, y - 12 + lengthdir_x(3, dir * 2), 1, 1, 0, c_white, 1);
}

with (objBox)
{
	if (global.phone == 1)
		draw_sprite(sprArrow, global.dir, x, y - 16 + lengthdir_x(3, global.dir * 6));
}


if (room == rmMansionMainHall)
{
	if (instance_exists(objBoss))
	{
		with (objSpecificWeapon)
		{
			if (image_index == 20 && instance_exists(objBodyguard))
				draw_sprite(sprArrow, global.dir, x, y - 16 + lengthdir_x(3, global.dir * 6));
			if (image_index == 34 && !instance_exists(objBodyguard) && !instance_exists(objPBodyguardBash) && !instance_exists(objBodyguardCrawl) && !instance_exists(objPKillBodyguard))
				draw_sprite(sprArrow, global.dir, x, y - 16 + lengthdir_x(3, global.dir * 6));
		}
	}
}

d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

if (room == rmSequence12b)
{
	if (!instance_exists(objPlayer))
	{
		dir += 8;
		color2 = merge_color(merge_color(c_aqua, c_fuchsia, 0.5 + lengthdir_x(0.5, dir * 2.32)), c_white, 0.5 + lengthdir_x(0.5, dir * 3));
		color1 = merge_color(c_maroon, merge_color(c_aqua, c_fuchsia, 0.5 - lengthdir_x(0.5, dir * 2.32)), 0.75 + lengthdir_x(0.25, dir * 3));
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		ammostring = "R TO RESTART!";
		if (ammoy < 40)
			ammoy += 1;
		else
			ammoy = 40;
		if (update == 0)
			draw_set_font(fntSubtitles);
		else
			draw_set_font(fntScoreUpdate);
		draw_set_color(c_black);
		draw_set_font(fntSubtitles);
		draw_rectangle(0, __view_get( e__VW.HView, 0 ) - ammoy - 11, 18 + string_width(string_hash_to_newline(ammostring)) + 6, __view_get( e__VW.HView, 0 ) - ammoy + 11, 0);
		draw_set_font(fntSubtitles);
		draw_set_color(color1);
		draw_set_font(fntSubtitles);
		if (ammoy > -32)
			draw_text_transformed(18 + string_width(string_hash_to_newline(ammostring)) * 0.5 + lengthdir_x(1, dir), __view_get( e__VW.HView, 0 ) - ammoy + lengthdir_y(1, dir), string_hash_to_newline(ammostring), 1, 1, lengthdir_x(2, dir));
		draw_set_color(color2);
		if (ammoy > -32)
			draw_text_transformed(18 + string_width(string_hash_to_newline(ammostring)) * 0.5 + lengthdir_x(1, dir - 180), __view_get( e__VW.HView, 0 ) - ammoy + lengthdir_y(1, dir - 180), string_hash_to_newline(ammostring), 1, 1, lengthdir_x(2, dir - 10));
	}
}
scrDrawNoise();
scrDrawConversation();

if (instance_exists(objPlayerMouse))
{
	__view_set( e__VW.XView, 0, vlastx );
	__view_set( e__VW.YView, 0, vlasty );
}

if (leveltitle == "")
	nothing = 1;
else
{
	if (levelshow > 0)
		levelshow -= 1;
	else
		leveltitle = "";
	draw_set_font(fntDate);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	if (levelshow > 180)
		draw_set_alpha((240 - levelshow) * (1 / 60));
	if (levelshow < 60)
		draw_set_alpha(levelshow * (1 / 60));
	draw_set_color(c_black);
	draw_text(__view_get( e__VW.WView, 0 ) / 2 + 1, __view_get( e__VW.HView, 0 ) * 0.7 + 1, string_hash_to_newline(leveltitle));
	draw_set_color(c_white);
	draw_text(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) * 0.7, string_hash_to_newline(leveltitle));
	draw_set_alpha(1);
}

with (objGoToCar)
{
	if (ammoy < 36)
		ammoy += 4;
	else
		ammoy = 40;
	draw_set_color(c_black);
	draw_set_font(fntSubtitles);
	ammostring = "Leave the area";
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_rectangle(0, __view_get( e__VW.HView, 0 ) - ammoy - 11, 18 + string_width(string_hash_to_newline(ammostring)) + 6, __view_get( e__VW.HView, 0 ) - ammoy + 11, 0);
	draw_set_color(merge_color(c_teal, c_red, 0.5 + lengthdir_x(0.5, dir)));
	draw_text_transformed(18 + string_width(string_hash_to_newline(ammostring)) * 0.5 + lengthdir_x(1, dir), __view_get( e__VW.HView, 0 ) - ammoy + lengthdir_y(1, dir), string_hash_to_newline(ammostring), 1, 1, lengthdir_x(2, dir * 1.34));
	draw_set_color(merge_color(c_white, c_yellow, 0.2 + lengthdir_x(0.2, dir)));
	dir += 10;
	draw_text_transformed(18 + string_width(string_hash_to_newline(ammostring)) * 0.5 + lengthdir_x(1, dir - 180), __view_get( e__VW.HView, 0 ) - ammoy + lengthdir_y(1, dir - 180), string_hash_to_newline(ammostring), 1, 1, lengthdir_x(2, dir * 1.34 - 10));
}

scrStoryDrawAmmo();


if (fade == 0)
{
	if (amount < 180)
	{
		amount += 5 - start * 4;
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, amount)), 0.5 + lengthdir_x(0.5, amount));
		if (amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, amount))), abs(lengthdir_y(1, amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, color1, color2, color2, color1, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		start = 0;
		show_date = 0;
	}
}

if (fade == 1)
{
	if (amount > 0)
	{
		amount -= 10;
		if (restart == 1 || newsong == 1)
		{
			sxeasy_setVolume(amount * (1 / 180));
		}
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, amount)), 0.5 + lengthdir_x(0.5, amount));
		if (amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, amount))), abs(lengthdir_y(1, amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, color2, color1, color1, color2, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		fade = 0;
		if (restart == 1)
		{
			sxeasy_stop(1);
			sxeasy_setVolume(0);
			game_restart(); // sxeasy_play(working_directory+"\HorseSteppin.mp3"); room=rmMenu
		}
		else
		{
			if (next == 1)
			{
				if (newsong == 1)
				{
					sxeasy_stop(1);
					if (room == rmDream1)
						sxeasy_setVolume(0);
					sxeasy_play(song);
				}
				if (room == rmTutorial)
					sxeasy_stop(1);
				room = nextroom;
			}
			else
			{
				scrResetActiveSurfaces();
				game_load(working_directory + "\\tempsave.sav");
			}
		}
	}
}
coldir += 1;

scrDrawPlayer();

if (show_date == 1)
{
	if (room == rmSequence1)
		text = "April 3rd, 1989#Miami - Florida";
	if (room == rmSequence2)
		text = "April 8th, 1989#Miami - Florida";
	if (room == rmSequence3)
		text = "April 16th, 1989#Miami - Florida";
	if (room == rmSequence4)
		text = "April 25th, 1989#Miami - Florida";
	if (room == rmSequence5)
		text = "May 5th, 1989#Miami - Florida";
	if (room == rmSequence6)
		text = "May 11th, 1989#Miami - Florida";
	if (room == rmSequence7)
		text = "May 13th, 1989#Miami - Florida";
	if (room == rmSequence8)
		text = "May 23rd, 1989#Miami - Florida";
	i = 0;
	draw_set_alpha(0.5 + lengthdir_x(0.5, amount));
	draw_set_color(c_gray);
	draw_set_font(fntDate);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(__view_get( e__VW.WView, 0 ) / 2 + 1, __view_get( e__VW.HView, 0 ) / 2 + 1, string_hash_to_newline(text));
	draw_set_color(c_white);
	draw_text(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) / 2, string_hash_to_newline(text));
	draw_set_alpha(1);
	
	// d3d_set_projection_ortho(0,0,view_wview[0],view_hview[0],0)
}

if (brus > 0)
{
	brus -= 1;
	if (lastbrus == 0)
		sound_play(sndNoise);
	lastbrus = brus;
	if (brus == 0)
		sound_stop(sndNoise);
	draw_sprite_tiled(sprNoise, global.dir * 0.5, 0, 0);
	draw_set_color(c_black);
	draw_rectangle(0, 0, __view_get( e__VW.WView, 0 ), blackx, 0);
	draw_rectangle(0, __view_get( e__VW.HView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ) - blackx * 1.5, 0);
}


draw_set_blend_mode(bm_subtract);
draw_sprite_tiled(sprScanlines, 0, 0, my_y);
my_y = random(32);

/*
//Draw scratch.

if scratch > 0 {
    draw_set_blend_mode(bm_add)
    repeat(scratch) {
        draw_sprite_ext(sprSmallWhiteDistortion, random(4), random(view_wview[0]), random(view_hview[0]), 1, 1, 0, merge_color(c_black, c_gray, random(1)), 1)
    }
    repeat(30) {
        draw_sprite_ext(sprMediumWhiteDistortion, random(4), random(view_wview[0]), view_hview[0] + 20 - random(6) - abs(scratch) * 0.5, 1 + random(2), 1, 0, merge_color(c_black, c_gray, random(1)), 1)
    }
    repeat(30) {
        draw_sprite_ext(sprMediumWhiteDistortion, random(4), random(view_wview[0]), view_hview[0] + 40 - random(6) - abs(scratch) * 0.6, 1 + random(2), 1, 0, merge_color(c_black, c_gray, random(1)), 1)
    }
    my_y = random(32)
    my_x = random(32)
    draw_sprite_tiled_ext(sprNoise, 0, -my_x, -my_y, 1, 1, merge_color(c_black, c_white, scratch * 0.01), 1)
    my_y = random(32)
    my_x = random(32)
    draw_sprite_tiled_ext(sprNoise, 0, -my_x, -my_y, 1, 1, merge_color(c_black, c_white, scratch * 0.01), 1)
    draw_set_blend_mode(bm_normal)
    scratch -= 2
}

/* */
/*  */
