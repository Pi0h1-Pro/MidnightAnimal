if (other.object_index == objGlassPanelH)
{
	if (vspeed > 0)
	{
		other.add = -1;
	}
	else
	{
		other.add = 1;
	}
	with (other)
	{
		i = 0;
		repeat (40)
		{
			my_id = instance_create(x + i * 1.5, y, objShard);
			my_id.speed = random(5);
			my_id.direction = add * 90 - 8 + random(16);
			i += 1;
		}
		instance_create(x, y, objGlassPanelHBroken);
		instance_destroy();
		if (instance_exists(objLSD))
			sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
		else
			sound_play(choose(sndGlass1, sndGlass2));
		sound_play(sndWeaponHit);
	}
	exit;
}

if (other.object_index == objGlassPanelV)
{
	if (hspeed > 0)
	{
		other.add = -1;
	}
	else
	{
		other.add = 1;
	}
	with (other)
	{
		i = 0;
		repeat (40)
		{
			my_id = instance_create(x, y + i * 1.5, objShard);
			my_id.speed = random(5);
			my_id.direction = 90 + add * 90 - 8 + random(16);
			i += 1;
		}
		instance_create(x, y, objGlassPanelVBroken);
		instance_destroy();
		sound_play(sndGlass1);
		sound_play(sndGlass2);
	}
	exit;
}

