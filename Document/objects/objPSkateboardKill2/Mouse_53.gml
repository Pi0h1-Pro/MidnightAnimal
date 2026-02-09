if (global.xbox == 1)
	exit;
if (image_index == 0 && hurtindex == targetindex && targetindex < 11)
{
	if (targetindex == 8)
		targetindex = 11;
	if (targetindex == 4)
		targetindex = 8;
	if (targetindex == 0)
	{
		targetindex = 4;
		if (global.maskindex == 2)
		{
			hurtindex = 8;
			targetindex = 11;
		}
	}
	hurtindex += 1;
	image_index = 7;
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndPunch);
	global.shake = 8;
	
	repeat (2 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle + 120 - random(240);
	}
	instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
}


if (targetindex == 11)
{
	global.shake = 12;
	repeat (6)
	{
		my_id = instance_create(x + lengthdir_x(22, image_angle) - 2 + random(4), y + lengthdir_y(22, image_angle) - 2 + random(4), objBloodSquirt);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y);
		my_id.image_angle = random(360);
	}
}

