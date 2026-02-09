// Xbox controller.
if (global.xbox == 1)
{
	if (checkbutton(0, getid(5)))
	{
		if (presstart == 0)
		{
			presstart = 1;
			scrXboxMenuStart();
		}
	}
	else
		presstart = 0;
	
	if (checkbutton(0, getid(6)))
	{
		if (pressback == 0)
		{
			pressback = 1;
			scrXboxMenuQuit();
		}
	}
	else
		pressback = 0;
	
	if (leftthumb_x(0) > 10000)
	{
		if (pressright == 0)
		{
			pressright = 1;
			scrXboxMenuRight();
			sound_play(sndNav);
		}
	}
	else
		pressright = 0;
	
	if (leftthumb_x(0) < -10000)
	{
		if (pressleft == 0)
		{
			pressleft = 1;
			scrXboxMenuLeft();
			sound_play(sndNav);
		}
	}
	else
		pressleft = 0;
	
	if (leftthumb_y(0) > 10000)
	{
		if (pressup == 0)
		{
			pressup = 1;
			scrXboxMenuUp();
			sound_play(sndNav);
		}
	}
	else
		pressup = 0;
	
	if (leftthumb_y(0) < -10000)
	{
		if (pressdown == 0)
		{
			pressdown = 1;
			scrXboxMenuDown();
			sound_play(sndNav);
		}
	}
	else
		pressdown = 0;
}

// Create sea glimmer.
if (sea == 1)
{
	my_id = instance_create(random(room_width), room_height / 2 + 3 + random(48), objSeaGlimmer);
}


// Create small houses.
if (tree > 0)
	tree -= 1;
else
{
	my_id = instance_create(room_width / 2 - 5, room_height / 2, objSmallHouse);
	my_id.hspeed = -0.233;
	my_id = instance_create(room_width / 2 + 5, room_height / 2, objSmallHouse);
	my_id.hspeed = 0.233;
	tree = 50;
}

if (wait > 0)
	wait -= 1;

if (!surface_exists(surf1))
{
	surf1 = surface_create(room_width, room_height);
	if (surface_exists(surf1))
	{
		surface_set_target(surf1);
		draw_clear_alpha(c_black, 0);
		surface_reset_target();
	}
}

if (keyboard_check_pressed(ord(global.upkey)))
	event_perform(ev_keypress, ord("W"));
if (keyboard_check_pressed(ord(global.downkey)))
	event_perform(ev_keypress, ord("S"));
if (keyboard_check_pressed(ord(global.rightkey)))
	event_perform(ev_keypress, ord("D"));
if (keyboard_check_pressed(ord(global.leftkey)))
	event_perform(ev_keypress, ord("A"));

if (!surface_exists(surf1))
	exit;
surface_set_target(surf1);
draw_clear_alpha(c_black, 0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

i = 0;
ii = 0;
draw_set_font(fntMenu);


if (level == 3)
{
	amount = 0.5 + lengthdir_x(0.5, dir * 10);
	draw_set_color(merge_color(yellow, yellow, amount));
	draw_text(x + 1, y + 76, string_hash_to_newline("WARNING!"));
	amount = 0.5 - lengthdir_x(0.5, dir * 10);
	draw_set_color(merge_color(yellow, yellow, amount));
	draw_text(x, y + 76, string_hash_to_newline("WARNING!"));
	draw_set_font(fntWarning);
	draw_set_color(c_red);
	draw_text(x + 1, y + 86, string_hash_to_newline("PLEASE UPDATE YOUR GAMEPAD DRIVERS#BEFORE ENABLING THIS FEATURE!#ARE YOU SURE YOU WANT TO PROCEED?"));
	draw_text_color(x, y + 85, string_hash_to_newline("PLEASE UPDATE YOUR GAMEPAD DRIVERS#BEFORE ENABLING THIS FEATURE!#ARE YOU SURE YOU WANT TO PROCEED?"), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 90)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 180)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 270)), 1);
	
	
	
	draw_set_color(c_red);
	draw_text(x + 1, 215, string_hash_to_newline("THE LATEST GAMEPAD DRIVERS CAN BE#DOWNLOADED FREE AT MICROSOFT.COM!"));
	draw_set_color(yellow);
	draw_text(x, 214, string_hash_to_newline("THE LATEST GAMEPAD DRIVERS CAN BE#DOWNLOADED FREE AT MICROSOFT.COM!"));
	draw_set_font(fntMenu);
	start_x = 160;
	
	// Main menu font colour for selections.
	repeat (2)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			
			// Colour if currently highlighted:
			repeat (repeats)
			{
				draw_set_color(merge_color(yellow, orange, ii * 0.085));
				draw_text(start_x + ii, y + 76 + 60, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		} // Default colour elsewise:
		else
		{
			// Initiate colours.
			color1 = merge_color(orange, c_aqua, 0.5 + lengthdir_x(0.5, dir));
			color2 = merge_color(merge_color(orange, yellow, 0.5), yellow, 0.5 + lengthdir_x(0.5, dir));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(color2, color1, amount));
			draw_text(start_x, y + 76 + 60, string_hash_to_newline(alt[i]));
		}
		i += 1;
		start_x += 80;
	}
}

// OPTIONS MENU

// VOLUME SLIDER
if (level == 2)
{
	alt[0] = "MUSIC " + string(round(global.mvol * 100)) + "%";
	
	repeat (2)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(orange, yellow, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, orange, amount));
			draw_text(x + 1, y + 76 + i * 20 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(x, y + 76 + i * 20, string_hash_to_newline(alt[i]));
		}
		i += 1;
	}
}

// Colour of main menu font.
if (level == 1)
{
	repeat (5)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(yellow, orange, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(orange, c_aqua, amount));
			draw_text(x + 1, y + 76 + i * 20 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(orange, yellow, amount));
			draw_text(x, y + 76 + i * 20, string_hash_to_newline(alt[i]));
		}
		i += 1;
	}
}

if (level == 0)
{
	repeat (4)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			
			// Colour of current selection.
			repeat (repeats)
			{
				draw_set_color(merge_color(orange, yellow, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			// Otherwise, colour of nonselected items.
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(x + 1, y + 76 + i * 20 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(x, y + 76 + i * 20, string_hash_to_newline(alt[i]));
		}
		i += 1;
	}
}

if (level == 4)
{
	start_y = 0;
	
	draw_set_font(fntWarning);
	draw_set_color(c_red);
	draw_text(x + 1, y + 80, string_hash_to_newline("TURN OFF IF YOU ARE GETTING STUCK#BETWEEN FLOORS AND CAN'T PROGRESS"));
	draw_text_color(x, y + 80, string_hash_to_newline("TURN OFF IF YOU ARE GETTING STUCK#BETWEEN FLOORS AND CAN'T PROGRESS"), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 90)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 180)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 270)), 1);
	draw_set_font(fntMenu);
	
	repeat (4)
	{
		if (i == 1)
			start_y += 28;
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(orange, yellow, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20 + start_y, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			if (i == 1 && global.surfaces == 1)
			{
				amount = 0.5 + lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(c_gray, orange, amount));
				draw_text(x + 1, y + 76 + i * 20 + 1 + start_y, string_hash_to_newline(alt[i]));
				amount = 0.5 - lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(c_gray, orange, amount));
				draw_text(x, y + 76 + i * 20 + start_y, string_hash_to_newline(alt[i]));
			}
			else
			{
				amount = 0.5 + lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(yellow, c_red, amount));
				draw_text(x + 1, y + 76 + i * 20 + 1 + start_y, string_hash_to_newline(alt[i]));
				amount = 0.5 - lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(yellow, c_red, amount));
				draw_text(x, y + 76 + i * 20 + start_y, string_hash_to_newline(alt[i]));
			}
		}
		i += 1;
	}
}

draw_set_blend_mode(bm_normal);

surface_alpha();
surface_reset_target();
if (sea == 1)
{
	my_id = instance_create(random(room_width), room_height / 2 + 3 + random(48), objSeaGlimmer);
	my_id.image_speed = 0.7;
}

if (tree > 0)
	tree -= 1;
else
{
	my_id = instance_create(room_width / 2 - 25, room_height / 2, objSmallHouse);
	my_id.hspeed = -0.333;
	my_id = instance_create(room_width / 2 + 25, room_height / 2, objSmallHouse);
	my_id.hspeed = 0.333;
	tree = 50;
}


if (wait > 0)
	wait -= 1;

if (!surface_exists(surf1))
{
	surf1 = surface_create(room_width, room_height);
	if (surface_exists(surf1))
	{
		surface_set_target(surf1);
		draw_clear_alpha(c_red, 0);
		surface_reset_target();
	}
}

if (keyboard_check_pressed(ord(global.upkey)))
	event_perform(ev_keypress, ord("W"));
if (keyboard_check_pressed(ord(global.downkey)))
	event_perform(ev_keypress, ord("S"));
if (keyboard_check_pressed(ord(global.rightkey)))
	event_perform(ev_keypress, ord("D"));
if (keyboard_check_pressed(ord(global.leftkey)))
	event_perform(ev_keypress, ord("A"));

if (!surface_exists(surf1))
	exit;
surface_set_target(surf1);
draw_clear_alpha(c_red, 0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

i = 0;
ii = 0;
draw_set_font(fntMenu);


if (level == 3)
{
	amount = 0.5 + lengthdir_x(0.5, dir * 10);
	draw_set_color(merge_color(yellow, yellow, amount));
	draw_text(x + 1, y + 76, string_hash_to_newline("WARNING!"));
	amount = 0.5 - lengthdir_x(0.5, dir * 10);
	draw_set_color(merge_color(yellow, yellow, amount));
	draw_text(x, y + 76, string_hash_to_newline("WARNING!"));
	draw_set_font(fntWarning);
	draw_set_color(c_red);
	draw_text(x + 1, y + 86, string_hash_to_newline("PLEASE UPDATE YOUR GAMEPAD DRIVERS#BEFORE ENABLING THIS FEATURE!#ARE YOU SURE YOU WANT TO PROCEED?"));
	draw_text_color(x, y + 85, string_hash_to_newline("PLEASE UPDATE YOUR GAMEPAD DRIVERS#BEFORE ENABLING THIS FEATURE!#ARE YOU SURE YOU WANT TO PROCEED?"), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 90)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 180)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 270)), 1);
	
	
	
	draw_set_color(c_red);
	draw_text(x + 1, 215, string_hash_to_newline("THE LATEST GAMEPAD DRIVERS CAN BE#DOWNLOADED FREE AT MICROSOFT.COM!"));
	draw_set_color(yellow);
	draw_text(x, 214, string_hash_to_newline("THE LATEST GAMEPAD DRIVERS CAN BE#DOWNLOADED FREE AT MICROSOFT.COM!"));
	draw_set_font(fntMenu);
	start_x = 160;
	
	// Main menu font colour for selections.
	repeat (2)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			
			// Colour if currently highlighted:
			repeat (repeats)
			{
				draw_set_color(merge_color(yellow, orange, ii * 0.085));
				draw_text(start_x + ii, y + 76 + 60, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		} // Default colour elsewise:
		else
		{
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(start_x + 1, y + 76 + 60 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(start_x, y + 76 + 60, string_hash_to_newline(alt[i]));
		}
		i += 1;
		start_x += 80;
	}
}

// OPTIONS MENU

// VOLUME SLIDER
if (level == 2)
{
	alt[0] = "MUSIC " + string(round(global.mvol * 100)) + "%";
	
	repeat (2)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(orange, yellow, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, orange, amount));
			draw_text(x + 1, y + 76 + i * 20 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(x, y + 76 + i * 20, string_hash_to_newline(alt[i]));
		}
		i += 1;
	}
}

// Colour of main menu font.
if (level == 1)
{
	repeat (5)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(yellow, orange, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(orange, c_aqua, amount));
			draw_text(x + 1, y + 76 + i * 20 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(orange, yellow, amount));
			draw_text(x, y + 76 + i * 20, string_hash_to_newline(alt[i]));
		}
		i += 1;
	}
}

if (level == 0)
{
	repeat (4)
	{
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(orange, yellow, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			amount = 0.5 + lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(x + 1, y + 76 + i * 20 + 1, string_hash_to_newline(alt[i]));
			amount = 0.5 - lengthdir_x(0.5, dir * 10);
			draw_set_color(merge_color(yellow, yellow, amount));
			draw_text(x, y + 76 + i * 20, string_hash_to_newline(alt[i]));
		}
		i += 1;
	}
}

if (level == 4)
{
	start_y = 0;
	
	draw_set_font(fntWarning);
	draw_set_color(c_red);
	draw_text(x + 1, y + 80, string_hash_to_newline("TURN OFF IF YOU ARE GETTING STUCK#BETWEEN FLOORS AND CAN'T PROGRESS"));
	draw_text_color(x, y + 80, string_hash_to_newline("TURN OFF IF YOU ARE GETTING STUCK#BETWEEN FLOORS AND CAN'T PROGRESS"), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 90)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 180)), merge_color(yellow, yellow, 0.5 + lengthdir_x(0.5, dir * 10 + 270)), 1);
	draw_set_font(fntMenu);
	
	repeat (4)
	{
		if (i == 1)
			start_y += 28;
		if (select == i)
		{
			repeats = 6 + lengthdir_x(5, dir * 10);
			repeat (repeats)
			{
				draw_set_color(merge_color(orange, yellow, ii * 0.085));
				draw_text(x + ii, y + 76 + i * 20 + start_y, string_hash_to_newline(alt[i]));
				ii += 1;
			}
		}
		else
		{
			if (i == 1 && global.surfaces == 1)
			{
				amount = 0.5 + lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(c_dkgray, orange, amount));
				draw_text(x + 1, y + 76 + i * 20 + 1 + start_y, string_hash_to_newline(alt[i]));
				amount = 0.5 - lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(c_gray, orange, amount));
				draw_text(x, y + 76 + i * 20 + start_y, string_hash_to_newline(alt[i]));
			}
			else
			{
				amount = 0.5 + lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(yellow, c_red, amount));
				draw_text(x + 1, y + 76 + i * 20 + 1 + start_y, string_hash_to_newline(alt[i]));
				amount = 0.5 - lengthdir_x(0.5, dir * 10);
				draw_set_color(merge_color(yellow, c_red, amount));
				draw_text(x, y + 76 + i * 20 + start_y, string_hash_to_newline(alt[i]));
			}
		}
		i += 1;
	}
}

draw_set_blend_mode(bm_normal);

surface_alpha();
surface_reset_target();

