if (sprite_index == sprDove || sprite_index == sprDoveIdle2)
{
	if (instance_exists(objBullet) || instance_exists(objEBullet))
	{
		direction = image_angle;
		sprite_index = sprDoveFly;
		speed = 1.5;
		gravity = 0.1;
		gravity_direction = direction - 10 + random(20);
	}
}

if (sprite_index == sprDoveFly)
{
	if (speed > 4.5)
		speed = 4.5;
	image_index += speed * 0.075;
}

