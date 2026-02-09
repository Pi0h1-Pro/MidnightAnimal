/// @description  Draw glow.
draw_set_color(c_orange);
draw_lens_flare(x, y, 255, 2, 2, 3, 4, 0.7);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

