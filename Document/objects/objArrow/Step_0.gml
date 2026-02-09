if (x > room_width + 100 || x < -100 || y < -100 || y > room_height + 100)
	instance_destroy();
if (speed <= 0)
{
	direction = dir;
	image_angle = direction;
}

