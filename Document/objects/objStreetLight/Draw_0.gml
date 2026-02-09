/// @description  Draw lights.

if (on == 1)
{
	if (image_angle == 0)
	{
		draw_set_color(c_white);
		draw_lens_flare(x, y + 40, 255, 2, 2, 3, 4, 0.7);
	}
	
	if (image_angle == 90)
	{
		draw_set_color(c_white);
		draw_lens_flare(x + 40, y, 255, 2, 2, 3, 4, 0.7);
	}
	
	if (image_angle == 180)
	{
		draw_set_color(c_white);
		draw_lens_flare(x, y - 40, 255, 2, 2, 3, 4, 0.7);
	}
	
	if (image_angle == 270)
	{
		draw_set_color(c_white);
		draw_lens_flare(x - 40, y, 255, 2, 2, 3, 4, 0.7);
	}
}

draw_sprite_ext(sprite_index, 1, x + 2, y + 3, image_xscale, image_yscale, image_angle, c_black, 0.5);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

