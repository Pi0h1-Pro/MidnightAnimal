surface_set_target(surf);
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
with (all)
{
	if (sprite_exists(sprite_index))
	{
		draw_sprite_ext(sprite_index, image_index, x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		visible = 0;
	}
}
surface_reset_target();
on = 1;
sound_ps(sndNuclearWarning);
alarm[0] = 180;

