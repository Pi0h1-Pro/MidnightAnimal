if (global.xbox == 1)
	exit;
if (image_index == 0 && hurtindex == targetindex && targetindex < 4)
{
	if (targetindex == 0)
		targetindex = 4;
	hurtindex += 1;
	image_index = 7;
	sound_play(sndHit);
	sound_play(sndPunch);
	global.shake = 14;
	repeat (4)
	{
		my_id = instance_create(x + lengthdir_x(18, image_angle), y + lengthdir_y(18, image_angle), objBloodSmoke);
		my_id.direction = random(360);
		my_id.image_angle = my_id.direction;
		my_id.speed = random(2);
	}
	repeat (2 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(18, image_angle) - 1 + random(2), y + lengthdir_y(18, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
		my_id.depth = 3;
	}
	
	if (targetindex == 4)
	{
		global.shake = 16;
		repeat (4)
		{
			my_id = instance_create(x + lengthdir_x(22, image_angle) - 2 + random(4), y + lengthdir_y(22, image_angle) - 2 + random(4), objBloodSquirt);
			my_id.direction = point_direction(x, y, my_id.x, my_id.y);
			my_id.image_angle = image_angle + 120 - random(240);
		}
		repeat (7)
		{
			my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objBrains);
			my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 20 + random(40);
			my_id.speed = 2 + random(2);
		}
		repeat (3)
		{
			my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objBrains2);
			my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 10 + random(20);
			my_id.speed = 1.5 + random(1.5);
			my_id.image_index = i;
			i += 1;
		}
	}
}

