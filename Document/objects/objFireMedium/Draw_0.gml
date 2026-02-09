draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, merge_color(c_white, c_yellow, random(1)), 1);
draw_set_blend_mode(bm_normal);

draw_set_color(global.c_fire);
draw_lens_flare(x, y, 250, 2, 2, 1, choose(3, 4, 5), choose(0.5, 0.6, 0.7));

