/// @description  Draw trail.

if (scrMovingPlayerExists())
{
	if (scrCurrentWeaponExt(objPlayer.sprite_index) == 80)
	{
		draw_set_blend_mode(bm_subtract);
		draw_sprite_ext(sprDashLeviathan, index, x, y, 0.24, 0.24, objPlayer.legdir, image_blend, 1);
		draw_set_blend_mode(bm_normal);
	} /* else if global.character = 2 {
            draw_sprite_ext(sprDashNormal, index, x, y, 0.4, 0.5, objPlayer.legdir, c_black, 1) 
        }*/
	else
		draw_sprite_ext(objPlayer.sprite_index, objPlayer.image_index - 1, x, y, 1, 1, objPlayer.legdir, c_white, 0.5);
}
index += 0.5;
draw_reset();

/* */
/*  */
