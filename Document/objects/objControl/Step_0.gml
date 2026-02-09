if (!surface_exists(global._lsys_surface))
{
	lsys_init(0);
}

if (instance_exists(objPlayer) && surface_exists(global._lsys_surface))
{
	lsys_light_set_position(l, objPlayer.x, objPlayer.y);
	lsys_update(alpha);
}

