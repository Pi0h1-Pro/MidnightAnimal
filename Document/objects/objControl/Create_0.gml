lsys_init(1);

scrGetAlpha();

l = lsys_light_add(96, 96, 160, c_white);

// merge_walls(objWall);

with (objWall)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, 0, 0);
	lsys_caster_add_point(c, sprite_width, 0);
	lsys_caster_add_point(c, sprite_width, sprite_height);
	lsys_caster_add_point(c, 0, sprite_height);
}

with (objDoorV)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, 0, 0);
	lsys_caster_add_point(c, sprite_width, 0);
	lsys_caster_add_point(c, sprite_width, sprite_height);
	lsys_caster_add_point(c, 0, sprite_height);
}

with (objDoorV2)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, 0, 0);
	lsys_caster_add_point(c, sprite_width, 0);
	lsys_caster_add_point(c, sprite_width, sprite_height);
	lsys_caster_add_point(c, 0, sprite_height);
}

with (objDoorH)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, 0, 0);
	lsys_caster_add_point(c, sprite_width, 0);
	lsys_caster_add_point(c, sprite_width, sprite_height);
	lsys_caster_add_point(c, 0, sprite_height);
}

with (objDoorH2)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, 0, 0);
	lsys_caster_add_point(c, sprite_width, 0);
	lsys_caster_add_point(c, sprite_width, sprite_height);
	lsys_caster_add_point(c, 0, sprite_height);
}

with (objSolid)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, -sprite_width / 2, -sprite_height / 2);
	lsys_caster_add_point(c, sprite_width / 2, -sprite_height / 2);
	lsys_caster_add_point(c, sprite_width / 2, sprite_height / 2);
	lsys_caster_add_point(c, -sprite_width / 2, sprite_height / 2);
}

with (objWallCorner)
{
	c = lsys_caster_add(x, y);
	lsys_caster_add_point(c, 0, 0);
	lsys_caster_add_point(c, sprite_width, 0);
	lsys_caster_add_point(c, sprite_width, sprite_height);
	lsys_caster_add_point(c, 0, sprite_height);
}

if (global.done == 1)
	instance_destroy();

