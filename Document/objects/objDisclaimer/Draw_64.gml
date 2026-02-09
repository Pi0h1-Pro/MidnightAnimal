/// @description  Fade.
draw_set_font(fntDisclaimer);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(global.albedo);
draw_sprite_ext(sprPreface, 0, display_get_gui_width() / 2, display_get_gui_height() / 2, 1, 1, 0, c_white, 1);

// draw_text_transformed(display_get_gui_width()() / 2, display_get_gui_height()() / 2, disclaimer, 1, 1, 0)

if (fade == 0)
{
	if (amount < 180)
	{
		amount += 10;
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, amount)), 0.5 + lengthdir_x(0.5, amount));
		if (amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, amount))), abs(lengthdir_y(1, amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(-10, -10, display_get_gui_width() + 10, display_get_gui_height(), color1, color2, color2, color1, 0);
		draw_set_blend_mode(bm_normal);
	}
}

if (fade == 1)
{
	if (amount > 0)
	{
		amount -= 10;
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, amount)), 0.5 + lengthdir_x(0.5, amount));
		if (amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, amount))), abs(lengthdir_y(1, amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(-10, -10, display_get_gui_width() + 10, display_get_gui_height(), color2, color1, color1, color2, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
		room_goto(rmMenu);
}

