image_alpha = (1 - (image_index / 6)) * 0.75;

draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, merge_color(c_gray, c_ltgray, 0.6 + lengthdir_x(0.4, dir)), image_alpha);
draw_set_blend_mode(bm_normal);
dir += 1;

