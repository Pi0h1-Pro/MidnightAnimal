if (image_index < 13)
	image_index += 0.5;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprEDeadBoiling;
	my_id.image_index = 0;
	my_id.image_speed = 0.15;
	scrFinishExecution(sprPWalkPot);
}

if (image_index >= 4 && bled == 0)
{
	bled = 1;
	sound_ps(sndBoilingWater);
	
	repeat (2 + random(3))
	{
		my_id = instance_create(x, y, objWaterSplat);
		my_id.direction = random(360);
		my_id.speed = 2 + random(2);
	}
	repeat (2 + random(3))
	{
		my_id = instance_create(x, y, objWaterSmudge);
		my_id.direction = random(360);
		my_id.speed = 3 + random(3);
		my_id.image_angle = my_id.direction;
	}
	repeat (1 + random(2))
		my_id = instance_create(x - 12 + random(24), y - 12 + random(24), objBigWater);
	
	repeat (4)
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objSteam);
		my_id.image_speed = 0.15;
		my_id.image_angle = random(360);
		my_id.image_alpha = 0.15;
	}
}
if (image_index >= 4)
{
	if (round(random(3)) == 2)
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objSteam);
	}
	my_id.image_speed = 0.15;
	my_id.image_angle = random(360);
	my_id.image_alpha = 0.15;
	if (hurtindex < 13)
		hurtindex += 0.2;
	else
		hurtindex = 6;
}

