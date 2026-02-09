/// @description  draw_text_outline(x, y, string, scale, rotation, string color, outline color)
/// @param x
/// @param  y
/// @param  string
/// @param  scale
/// @param  rotation
/// @param  string color
/// @param  outline color
function draw_text_outline() {
	var xx, yy;
	xx = argument[0];
	yy = argument[1];

	// Outline
	draw_set_color(argument[6]);
	draw_text_transformed(xx + 1, yy + 1, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx - 1, yy - 1, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx, yy + 1, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx + 1, yy, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx, yy - 1, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx - 1, yy, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx - 1, yy + 1, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_text_transformed(xx + 1, yy - 1, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);

	// Text
	draw_set_color(argument[5]);
	draw_text_transformed(xx, yy, string_hash_to_newline(argument[2]), argument[3], argument[3], argument[4]);
	draw_reset();



}
