/* draw_set_color(color_fill)
draw_set_alpha(alpha_fill)
draw_roundrect(x, y, x+width, y+height*2, false)
draw_set_alpha(alpha_frame)
draw_set_color(color_frame)
draw_roundrect(x, y, x+width, y+height*2, true)
*/
draw_set_color(global.albedo);
draw_set_font(fntTiny);
draw_set_valign(fa_middle);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_text(x + width / 2, y + height / 2 - 24, string_hash_to_newline("NOW PLAYING: " + currentartist + " - " + currentname));

if (valpha > 0)
{
	draw_set_halign(fa_right);
	draw_set_alpha(valpha);
	draw_text(display_get_gui_width() - 240, y + height / 2 - 24, string_hash_to_newline("VOLUME: " + string(wsound_get_volume() * 100) + "%"));
}

draw_reset();

/* */
/*  */
