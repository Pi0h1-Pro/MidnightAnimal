if (image_speed > 0)
	exit;
scrMoveSolidOn();
if (!place_free(x, y))
{
	if (speed > 0)
	{
		move_outside_solid(direction - 180, 8);
	}
	else
	{
		if (place_free(x + lengthdir_x(7, direction - 180), y + lengthdir_y(7, direction - 180)))
		{
			dir = direction;
			if (sprite_index == sprEGangGetUp)
				sprite_index = sprEGangGetUpLean;
			if (sprite_index == sprEGetUp)
				sprite_index = sprEGetUpLean;
			if (sprite_index == sprPoliceGetUp)
				sprite_index = sprPoliceGetUpLean;
			direction = round(direction * (1 / 90)) * 90;
			image_angle = direction - 180;
			if (place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)))
			{
				direction = dir;
				if (sprite_index == sprEGangGetUpLean)
					sprite_index = sprEGangGetUp;
				if (sprite_index == sprEGetUpLean)
					sprite_index = sprEGetUp;
				if (sprite_index == sprPoliceGetUpLean)
					sprite_index = sprPoliceGetUp;
			}
		}
	}
	speed = 0;
}
else
{
	if (!place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)))
	{
		move_contact_solid(direction, 8);
		dir = direction;
		if (sprite_index == sprEGangGetUp)
			sprite_index = sprEGangGetUpLean;
		if (sprite_index == sprEGetUp)
			sprite_index = sprEGetUpLean;
		if (sprite_index == sprPoliceGetUp)
			sprite_index = sprPoliceGetUpLean;
		direction = round(direction * (1 / 90)) * 90;
		image_angle = direction - 180;
		if (place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)))
		{
			direction = dir;
			if (sprite_index == sprEGangGetUpLean)
				sprite_index = sprEGangGetUp;
			if (sprite_index == sprEGetUpLean)
				sprite_index = sprEGetUp;
			if (sprite_index == sprPoliceGetUpLean)
				sprite_index = sprPoliceGetUp;
		}
	}
}
scrMoveSolidOff();

