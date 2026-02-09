draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, random(4), x, y, image_xscale, image_yscale * 1.12, image_angle, merge_color(c_orange, c_red, random(0.5)), 0.8);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprFireBallFlame, 0, x + lengthdir_x(28 * image_xscale, image_angle), y + lengthdir_y(28 * image_xscale, image_angle), image_xscale, image_yscale, random(360), image_blend, image_alpha);
draw_sprite_ext(sprLFGlow, 0, x, y, 0.75, 0.75, 0, global.c_fire, 0.5);
draw_reset();

