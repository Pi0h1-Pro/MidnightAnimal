if (scrIsDodging(sprite_index))
{
	if (!place_meeting(x, y, objBullet) && !place_meeting(x, y, objWeaponThrow))
	{
		if (image_index < 15)
			image_index += 0.25;
		else
		{
			if (object_index == objEnemyDodger)
				sprite_index = sprEDodgerWalk;
			legindex = 0;
		}
	}
	else
	{
		if (image_index < 3)
			image_index += 0.5;
	}
	exit;
}

if (sprite_index == sprEDodgerStunned)
{
	legindex = 0;
	if (image_index < 5)
		image_index += 0.25;
	else
	{
		sprite_index = sprEDodgerWalk;
		image_index = 0;
	}
	exit;
}

if (x < 0)
	hspeed = abs(hspeed);
if (x > room_width)
	hspeed = -abs(hspeed);
if (y < 0)
	vspeed = abs(vspeed);
if (y > room_height)
	vspeed = -abs(vspeed);
scrMoveSolidOn();

if (!scrPlaceFree(x + hspeed * 3, y + vspeed * 3))
{
	if (!scrPlaceFree(x + hspeed * 3, y))
		hspeed = -hspeed;
	if (!scrPlaceFree(x, y + vspeed * 3))
		vspeed = -vspeed;
}
if (path_index > 0)
{
	if (path_position == 1)
		path_end();
}
else
{
	if (killed == 0)
		image_speed = speed * 0.1;
}
scrMoveSolidOff();
if (!instance_exists(objPlayer))
{
	alert = 0;
	speed = 0;
	exit;
}

scrDodgerStep();
if (scrEnemyIsAttacking(sprite_index))
	image_speed = 0.5;
else
{
	if (path_index >= 0)
		image_speed = path_speed * 0.1;
	else
		image_speed = speed * 0.1;
}

