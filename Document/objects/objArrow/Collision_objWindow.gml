/// @description  Break window.
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
		repeat (24)
		{
			my_id = instance_create(x + i * 1.5, y, objShard);
			my_id.speed = random(5);
			my_id.direction = add * 90 - 8 + random(16);
			i += 1;
		}
		instance_create(x, y, objGlassPanelHBroken);
		instance_destroy();
		sound_ps(choose(sndGlass1, sndGlass2));
	}
	exit;
}

if (other.object_index == objWindowV)
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
		repeat (24)
		{
			my_id = instance_create(x, y + i * 1.5, objShard);
			my_id.speed = random(5);
			my_id.direction = 90 + add * 90 - 8 + random(16);
			i += 1;
		}
		instance_create(x, y, objBrokenWindowV);
		instance_destroy();
		sound_ps(choose(sndGlass1, sndGlass2));
	}
	exit;
}

if (other.object_index == objWindowH)
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
		repeat (24)
		{
			my_id = instance_create(x + i * 1.5, y, objShard);
			my_id.speed = random(5);
			my_id.direction = add * 90 - 8 + random(16);
			i += 1;
		}
		instance_create(x, y, objBrokenWindowH);
		instance_destroy();
		sound_ps(choose(sndGlass1, sndGlass2));
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
		repeat (24)
		{
			my_id = instance_create(x, y + i * 1.5, objShard);
			my_id.speed = random(5);
			my_id.direction = 90 + add * 90 - 8 + random(16);
			i += 1;
		}
		instance_create(x, y, objGlassPanelVBroken);
		instance_destroy();
		sound_ps(choose(sndGlass1, sndGlass2));
	}
	exit;
}

