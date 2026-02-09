dist -= speed;
if (dist <= 0)
{
	if (speed > 0)
	{
		repeat (8)
		{
			my_id = instance_create(x - 1 + random(2), y - 1 + random(2), objBloodDrop2);
			my_id.direction = random(360);
			my_id.image_angle = my_id.direction;
			my_id.speed = 0.1;
		}
		repeat (1 + random(2))
		{
			my_id = instance_create(x, y, objBrains2);
			my_id.direction = my_id.direction - 45 + random(90);
			my_id.speed = 3;
			my_id.dist = random(9);
		}
	}
	speed = 0;
	image_speed = 0;
	if (wait > 0)
	{
		if (wait > 0)
			wait -= 1;
		else
		{
			if (!instance_exists(objBigBlood))
			{
				if (global.blood == 0 || global.surfaces == 1)
					addToSurface(global.surf2, 1);
			}
		}
	}
}

