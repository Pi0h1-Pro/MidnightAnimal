if (image_index < 8)
	image_index += 0.35;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBigBlood);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprEAxeKill;
	my_id.image_index = 3;
	
	scrFinishExecution(sprPWalkAxe);
}
if (image_index >= 5 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	sound_ps(choose(sndCut1, sndCut2));
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_ps(sndPunch);
	global.shake = 16;
	
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	repeat (4)
	{
		my_id = instance_create(x + lengthdir_x(22, image_angle) - 2 + random(4), y + lengthdir_y(22, image_angle) - 2 + random(4), objBloodSquirt);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y);
		my_id.image_angle = image_angle + 120 - random(240);
	}
	repeat (12)
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objBrains);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 20 + random(40);
		my_id.speed = 2 + random(2);
	}
	repeat (6)
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), choose(objFleshChunk, objHeadPiece));
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 10 + random(20);
		my_id.speed = 1.5 + random(1.5);
		my_id.image_index = i;
		i += 1;
	}
}

