image_index = 1;
shotdir = other.direction;
sound_ps(choose(sndGlass1, sndGlass2));

shotx = other.x - other.hspeed * 0.5;
i = shotx - 1 + random(2);
repeat (32)
{
	my_id = instance_create(x + i, y + 4, objShard);
	if (frac(i) > 0)
		my_id.vspeed = sign(lengthdir_y(1, shotdir)) * (1 + random(3));
	else
		my_id.vspeed = sign(lengthdir_y(1, shotdir)) * (0.5 + random(1)) + lengthdir_y(1, 45 + i * 0.71) * sign(lengthdir_y(1, shotdir));
	my_id.image_index = ceil(random(8)) * random(1);
	my_id.i = i;
	my_id.shotx = shotx;
	my_id.shotdir = shotdir;
	with (my_id)
	{
		dist = point_distance(x + i, y + 4, shotx, y + 4) * 0.5;
		if (dist < 1)
			dist = 1;
		motion_add(shotdir, 2 / dist);
	}
	i += 0.5;
}

