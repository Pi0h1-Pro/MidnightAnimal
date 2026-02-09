/// @description  Draw the effect.

// Draw background.
draw_rectangle_colour(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, bg_colour, bg_colour, bg_colour, bg_colour, false);

// Draw text.
draw_set_font(fntRestart);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_colour(text_colour);
draw_text_transformed(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) / 2, string_hash_to_newline(thought[text]), scale, scale, angle);

