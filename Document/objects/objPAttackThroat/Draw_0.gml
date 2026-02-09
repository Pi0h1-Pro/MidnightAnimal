draw_sprite_ext(bottom, image_index, x + 1, y + 1, image_xscale, image_yscale, image_angle, c_black, 0.5);
dir = point_direction(x, y, mouse_x, mouse_y);
draw_sprite_ext(bottom, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

