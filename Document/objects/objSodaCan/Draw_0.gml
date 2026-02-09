if (scrMovingPlayerExists())
{
	if (empty == false)
	{
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		
		/* if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 {
            draw_self_shadow(0.2)
            d3d_set_fog(true,c_white,0,0)
            draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
            d3d_set_fog(0,0,0,0)
            dir += 4
        } else {
            draw_self_shadow(0.2)
            d3d_set_fog(true,c_white,0,0)
            draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
            d3d_set_fog(0,0,0,0)
            dir += 4 */
		//}
	}
	else
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

/* */
/*  */
