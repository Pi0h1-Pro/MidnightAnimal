// Move
dir += random_range(-0.2, 0.2);
spd *= 0.98;
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

// Fade
if (fade)
{
	image_alpha *= 0.95;
	image_alpha -= 0.05;
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
}

// Stop when hitting a wall
if (collision_point(x, y, _SOLID, true, false))
{
	spd *= 0.6;
}

