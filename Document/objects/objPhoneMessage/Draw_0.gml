/// @description  Draw icons, text boxes and text.

// Start looping through the list.
for (i = 0; i < min(ds_list_size(list), length); i++)
{
	// Define what the text will be.
	var line = string(ds_list_find_value(list, i + max(ds_list_size(list) - length, 0) - offset))
	
	// Check whether the box is close to its destination, with a leeway of 4 pixels both horizontally and vertically.
	;
	positioned = x > (__view_get( e__VW.WView, 0 ) / 2 + 72 - 2) && x < (__view_get( e__VW.WView, 0 ) / 2 + 72 + 2) && y > ((__view_get( e__VW.HView, 0 ) / 2 - 76 - padding * 2) - 2) && y < ((__view_get( e__VW.HView, 0 ) / 2 - 76 - padding * 2) + 2);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_font(fntPauseMenu);
	draw_set_alpha(alpha);
	
	// Width of message, capped at max_width.
	width = min(max_width, string_width_ext(string_hash_to_newline(line), -1, max_width) + padding * 2);
	
	// Height of message box (varies based on message length).
	height = (string_height_ext(string_hash_to_newline(line), -1, width) + padding * 2) / 5;
	
	// Gradual width and height shifting of box.
	if (height_shift < height)
		height_shift += (height - height_shift) / 5;
	if (height_shift > height)
		height_shift -= (height_shift - height) / 5;
	
	if (width_shift < width)
		width_shift += (width - width_shift) / 5;
	if (width_shift > width)
		width_shift -= (width_shift - width) / 5;
	
	// Draw text box.
	draw_set_color(c_interior);
	
	// draw_rectangle(x - padding * 2, y - height_shift / 2  + i * 80, x + 80 + padding * 2, y + height_shift / 2  + i * 80, false)
	draw_rectangle(x - 50 - padding * 2, y - height_shift / 2 + i * 80, x + 80 + padding * 2, y + height_shift / 2 + i * 80, false);
	
	// Draw text.
	draw_set_color(text_col);
	
	// draw_text_ext_transformed(x, y + i * 80, string_copy(line, 1, char), -1, width - padding * 2, 0.125, 0.125, 0)
	draw_text_ext_transformed(x - 12, y + i * 80, string_hash_to_newline(line), -1, width, 0.125, 0.125, 0);
	
	// Check whether key is held.
	hold = mouse_check_button(key);
	
	// If the text is currently in the proper position, increase speed.
	if (char < string_length(line))
	{
		if (positioned)
			char += text_speed * (1 + hold);
	}
	
	// Jump to the end of the sentence if it hasn't been completed.
	if (mouse_check_button_pressed(key))
	{
		if (char != string_length(line))
			char = string_length(line);
		else
			phase = 1;
	}
	
	// Move one to the next available message if it exists; otherwise, destroy the dialogue prompt.
	if (char == string_length(line) && mouse_check_button_pressed(key) && phase == 1)
	{
		// If the message state is less than the [array_length] - 1...
		if (state < (array_length_1d(text_id) - 1))
		{
			state += 1;
			char = 0;
			phase = 0;
		} // ...otherwise, fade out the textbox.
		else
			fade = 1;
	}
	
	// Gradually shift the coordinates of the box (below the pointer, as per '-padding * 2' for y).
	if (x < __view_get( e__VW.WView, 0 ) / 2 + 72)
		x += ((__view_get( e__VW.WView, 0 ) / 2 + 72) - x) / 2;
	if (x > __view_get( e__VW.WView, 0 ) / 2 + 72)
		x -= (x - (__view_get( e__VW.WView, 0 ) / 2 + 72)) / 2;
	
	if (y < (__view_get( e__VW.HView, 0 ) / 2 - 76 - padding * 2))
		y += ((__view_get( e__VW.HView, 0 ) / 2 - 76 - padding * 2) - y) / 2;
	if (y > (__view_get( e__VW.HView, 0 ) / 2 - 76 - padding * 2))
		y -= (y - (__view_get( e__VW.HView, 0 ) / 2 - 76 - padding * 2)) / 2;
	
	// Draw icons.
	draw_sprite_ext(sprMessengerIcons, icon_id[ds_list_find_value(icons, i + max(ds_list_size(icons) - length, 0) - offset)], __view_get( e__VW.WView, 0 ) / 2 + 20, __view_get( e__VW.HView, 0 ) / 2 - 84 + i * 80, 0.3, 0.3, 0, c_white, image_alpha);
	
	draw_set_alpha(1);
	
	// Fading behaviour for text box; destroy it if the image's alpha drops too low.
	if (fade == 0)
	{
		if (positioned)
		{
			if (alpha < 1)
				alpha += (1 - alpha) / 5;
		}
	}
	else
	{
		if (alpha > 0)
			alpha -= alpha / 5;
		if (alpha < 0.05)
			instance_destroy();
	}
}

