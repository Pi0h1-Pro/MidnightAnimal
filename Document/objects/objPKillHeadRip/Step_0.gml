if (image_index == 30)
{
	my_id = instance_create(x - 12, y, objHeadRipped);
	my_id.direction = -180 + random(10);
	my_id.speed = 3;
	my_id.image_angle = my_id.direction;
}

if (image_index >= 13 && image_index < 35)
{
	if (round(random(3)) == 2)
	{
		repeat (random(4))
		{
			my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
			my_id.image_angle = image_angle - 120 + random(240);
		}
	}
	
	if (image_index < 4)
	{
		my_id = instance_create(x + lengthdir_x(24, image_angle) - 1 + random(2), y + lengthdir_y(24, image_angle) - 1 + random(2), objBrains);
		my_id.direction = image_angle - 70 - random(40);
		my_id.speed = random(3);
		my_id.image_angle = my_id.direction;
	}
}

if (image_index >= 13 && bled == 0)
{
	bled = 1;
	sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1));
	global.shake = 10;
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	repeat (6 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objFleshChunk);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 20 + random(40);
		my_id.speed = 2 + random(2);
	}
	repeat (1 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), choose(objBrains, objBrainsSmall));
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 10 + random(20);
		my_id.speed = 1.5 + random(1.5);
		my_id.image_index = random(3);
	}
}

