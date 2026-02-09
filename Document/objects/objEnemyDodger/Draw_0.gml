if (x > __view_get( e__VW.XView, 0 ) - sprite_width - 10 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + sprite_width + 10 && y > __view_get( e__VW.YView, 0 ) - sprite_height - 10 && y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + sprite_height + 10)
{
	if (speed > 0 || path_index >= 0)
	{
		if (sprite_index == sprEDodgerStunned || sprite_index == sprEDodgerDodge)
			nothing = 1;
		else
			draw_sprite_ext(sprELegs, image_index * 2, x, y, image_xscale, image_yscale, direction, image_blend, 1);
	}
	draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, image_xscale, left, direction, c_black, 0.5);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, left, direction, image_blend, image_alpha);
}

