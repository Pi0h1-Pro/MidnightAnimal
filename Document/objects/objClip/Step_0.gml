if (startspeed == 0.1 && speed > 0)
	startspeed = speed;
image_blend = merge_color(c_ltgray, c_white, speed * (1 / startspeed));
image_angle += rotspeed;
if (speed == 0)
{
	if (surface_exists(global.surf2))
		addToSurface(global.surf2, 1);
}

