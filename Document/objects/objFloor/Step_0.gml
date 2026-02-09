if (instance_exists(objSurfacer))
{
	surface_set_target(objSurfacer.floorsurf);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	surface_reset_target();
}

