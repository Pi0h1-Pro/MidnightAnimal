if (index == 8)
{
	with (other)
	{
		i = 0;
		repeat (16)
		{
			my_id = instance_create(x + i * 2, y, objDebrisLarge);
			if (y < objGrenadeExplosion.y)
				my_id.speed = random(4);
			else
				my_id.vspeed = random(4);
			i += 1;
		}
		
		sound_ps(sndBreakDoor);
		global.shake = 16;
		
		if (image_angle != 0)
			image_angle = 0;
		my_id = instance_create(x, y, objDestroyedDoor);
		my_id.direction = point_direction(x, y, other.x + 16, other.y); // 90
		my_id.speed = 2;
		my_id.image_angle = random_range(-20, 20);
		instance_destroy();
	}
}

