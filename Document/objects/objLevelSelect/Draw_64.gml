/// @description  Draw the background.
draw_rectangle_colour(-20, -20, display_get_gui_width() + 20, display_get_gui_height() + 20, global.nigredo, global.nigredo, global.nigredo, global.nigredo, 0);

draw_set_font(fntTiny);
draw_set_halign(fa_left);
draw_set_colour(c_ltgray);
draw_text(64, 16, string_hash_to_newline("///DEBUG LEVEL SELECT///"));
for (var i = ds_list_size(levelList) - 1; i > -1; i--)
{
	if (select == i)
		draw_set_colour(global.rubedo);
	else
		draw_set_colour(global.albedo);
	draw_text(64, 64 + (32 * i), string_hash_to_newline(ds_list_find_value(levelList, i)));
}

