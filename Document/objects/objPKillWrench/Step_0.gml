if (index < targetindex)
	index += 0.5;
if (image_index > 0)
{
	if (image_index < 8)
		image_index += 0.5;
	else
	{
		if (targetindex < 25)
			image_index = 0;
		else
		{
			blood = instance_create(x + lengthdir_x(22, image_angle) - 1 + random(2), y + lengthdir_y(22, image_angle) - 1 + random(2), objBloodPool);
			my_id = instance_create(x, y, objDeadBody);
			my_id.sprite_index = bottom;
			my_id.image_index = 25;
			my_id.image_angle = image_angle;
			scrFinishExecution(sprPWalkWrench);
		}
	}
	
	if (image_index >= 5 && image_index - 0.2 < 5)
	{
		sound_ps(sndHit);
		sound_ps(sndPunch);
		sound_ps(sndHitMarker);
		objEffector.hitalpha = 1;
		objEffector.hudflash = 10;
		global.shake = 11;
		myx = x + lengthdir_x(20, image_angle);
		myy = y + lengthdir_y(20, image_angle);
		if (targetindex > 18)
		{
			repeat (2 + random(3))
			{
				my_id = instance_create(x + lengthdir_x(22, image_angle) - 1 + random(2), y + lengthdir_y(22, image_angle) - 1 + random(2), objBloodSquirt);
				my_id.image_angle = image_angle + 120 - random(60);
				my_id.depth = 3;
			}
		}
		if (targetindex > 16)
		{
			repeat (2)
				instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
		}
	}
}

