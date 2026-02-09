draw_sprite_ext(sprite_index, image_index, x + 2, y + 3, image_xscale, image_yscale, image_angle, c_black, 0.5);
draw_self();

if (image_index == 0)
{
	draw_set_color(merge_color(merge_color(c_yellow, c_white, 0.6), c_black, 0.3));
	draw_lens_flare(x, y, 255, 2, 2, 3, 4, 0.7);
}

