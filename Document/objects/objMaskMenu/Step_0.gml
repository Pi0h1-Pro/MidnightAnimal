if (global.xbox == 1)
{
	if (checkbutton(0, getid(5)))
	{
		if (presstart == 0)
		{
			presstart = 1;
			
			// scrXboxMaskMenuStart()
			event_perform(ev_keypress, vk_enter);
		}
	}
	else
		presstart = 0;
	
	
	if (leftthumb_x(0) > 5000)
	{
		if (pressright == 0)
		{
			pressright = 1;
			event_perform(ev_keypress, ord("D"));
		}
	}
	else
		pressright = 0;
	
	if (leftthumb_x(0) < -5000)
	{
		if (pressleft == 0)
		{
			pressleft = 1;
			event_perform(ev_keypress, ord("A"));
		}
	}
	else
		pressleft = 0;
}

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

draw_set_font(fntMaskDescription);
draw_set_halign(fa_center);

// Draw Tony's "No weapons".
if (current == 2)
{
	// Shadow.
	draw_set_color(merge_color(c_purple, c_fuchsia, 0.5 + lengthdir_x(0.5, dir)));
	draw_text(__view_get( e__VW.WView, 0 ) / 2 + 1, __view_get( e__VW.HView, 0 ) * 0.87 + 1, string_hash_to_newline(description[current]));
	
	// Text.
	draw_set_color(merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, dir)));
	draw_text(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) * 0.87, string_hash_to_newline(description[current]));
	
	draw_set_color(merge_color(c_maroon, c_red, 0.5 + lengthdir_x(0.5, dir * 5)));
	draw_set_halign(fa_right);
	draw_text(__view_get( e__VW.WView, 0 ) / 2 + string_width(string_hash_to_newline(description[current])) / 2 + 1, __view_get( e__VW.HView, 0 ) * 0.87 + 1, string_hash_to_newline("No weapons"));
	
	draw_set_color(merge_color(c_red, c_white, 0.5 + lengthdir_x(0.5, dir * 5)));
	draw_text(__view_get( e__VW.WView, 0 ) / 2 + string_width(string_hash_to_newline(description[current])) / 2, __view_get( e__VW.HView, 0 ) * 0.87, string_hash_to_newline("No weapons"));
} // Normal mask descriptions.
else
{
	// Shadow.
	draw_set_color(merge_color(c_purple, c_fuchsia, 0.5 + lengthdir_x(0.5, dir)));
	draw_text(__view_get( e__VW.WView, 0 ) / 2 + 1, __view_get( e__VW.HView, 0 ) * 0.87 + 1, string_hash_to_newline(description[current]));
	
	// Text.
	draw_set_color(merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, dir)));
	draw_text(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) * 0.87, string_hash_to_newline(description[current]));
}

// Begin drawing mask names.
draw_set_font(fntMasks);

times = 2 + lengthdir_x(4, dir * 2.32);
if (times < 1)
	times = 1;
i = 0;

// Mask name.
repeat (times)
{
	draw_set_color(merge_color(c_silver, c_white, times * (1 / 6)));
	draw_text(__view_get( e__VW.WView, 0 ) / 2 - i, __view_get( e__VW.HView, 0 ) * 0.8 - i, string_hash_to_newline(name[current]));
	i += 1;
}

// Draw mask name.

// Shadow.
draw_set_color(merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.5, dir * 2)));
draw_text(__view_get( e__VW.WView, 0 ) / 2 - i + 1, __view_get( e__VW.HView, 0 ) * 0.8 - i + 1, string_hash_to_newline(name[current]));

// Text.
draw_set_color(merge_color(c_white, c_silver, 0.5 + lengthdir_x(0.5, dir * 2)));
draw_text(__view_get( e__VW.WView, 0 ) / 2 - i, __view_get( e__VW.HView, 0 ) * 0.8 - i, string_hash_to_newline(name[current]));

surface_reset_target();


if (wait > 0)
	wait -= 1;

