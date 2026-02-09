draw_sprite_ext(sprFirePit, 0, x, y, image_xscale, image_yscale, image_angle, merge_color(c_white, c_maroon, random(0.2)), image_alpha);
draw_sprite_ext(sprite_index, image_index - 1, x, y, image_xscale, image_yscale, image_angle, merge_color(c_yellow, c_orange, random(1)), image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, merge_color(c_white, c_yellow, random(1)), image_alpha);

draw_set_color(c_orange);
draw_lens_flare(x, y, 250, 2, 2, 1, choose(3, 4, 5), choose(0.5, 0.6, 0.7));

