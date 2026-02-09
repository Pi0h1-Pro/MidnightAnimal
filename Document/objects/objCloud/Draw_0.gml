// Begin drawing the cloud.
draw_set_blend_mode(bm_add);

// Draw the first image of the cloud.
draw_sprite_ext(sprCloud, 0, x, y, 2, image_yscale, image_angle, merge_color(c_black, c_gray, 0.6 + lengthdir_x(0.4, dir)), dir);

// Draw the second image of the cloud on top of it.
draw_sprite_ext(sprCloud, 1, x, y, 2, image_yscale, image_angle, merge_color(c_black, c_gray, 0.6 + lengthdir_x(0.4, dir + 120)), dir);

// Draw the third image of the cloud on top of the last two.
draw_sprite_ext(sprCloud, 2, x, y, 2, image_yscale, image_angle, merge_color(c_black, c_gray, 0.6 + lengthdir_x(0.4, dir + 240)), dir);
draw_set_blend_mode(bm_subtract);

// Draw several more instances of the clouds.
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, dir);
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, dir);

// End drawing the cloud.
draw_set_blend_mode(bm_normal);

// Allows the opacity and colour of the cloud to change very slightly.
dir += 1;

