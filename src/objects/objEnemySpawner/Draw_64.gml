draw_set_colour(c_black)
draw_set_font(fntAmmo)
draw_text(40, 40, string_hash_to_newline("WAVE: " + string(wave)))
draw_text(40, display_get_gui_height() - 40, string_hash_to_newline("NEXT WAVE IN: " +string(time)))

