if (global.mouse != id)
	if (fps)
	{
		image_angle += 15 / fps;
	}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1);

