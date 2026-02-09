if (!scrPlaceFree(x + hspeed * 2, y))
	hspeed = -hspeed;
if (!scrPlaceFree(x, y + vspeed * 2))
	vspeed = -vspeed;
image_speed = speed * 0.5;
if (speed < 0.7)
	friction = 0.005;
else
	friction = 0.05;
image_angle = direction;
if (bled < 50)
{
	if (prevdir <= 90 && dir > 90)
	{
		bled += 1;
		instance_create(x, y, objSplat);
	}
	if (prevdir <= 270 && dir > 270)
	{
		bled += 1;
		instance_create(x, y, objSplat);
	}
}

