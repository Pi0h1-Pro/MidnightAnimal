/// @description  Draw the damage counter.
// y -= spd

draw_set_font(fntDamage);
draw_set_halign(fa_center);
draw_set_colour(colour);
draw_set_alpha(image_alpha);
draw_text_transformed(x, y, string_hash_to_newline(text), font_size, font_size, rot);

