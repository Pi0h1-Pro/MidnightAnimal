/// @description  Draw firefly.

// Draw glow.
draw_set_colour(image_blend);
draw_set_alpha(image_alpha);
draw_sprite(sprite_index, 1, x, y);

// Draw body.
draw_set_colour(c_white);
draw_set_alpha(image_alpha);
draw_sprite(sprite_index, 0, x, y);

