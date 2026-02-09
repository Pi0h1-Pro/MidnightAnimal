if (image_index >= 7 && dead == 0)
{
	sound_ps(sndHandgun);
	sound_ps(sndHit1);
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	scrHearPlayer();
	ammo -= 1;
	global.shake = 10;
	repeat (2 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
		
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBrains);
		my_id.image_angle = image_angle + 120 - random(240);
		my_id.speed = 2 + random(2);
		my_id.friction = 0.15;
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	targetindex = 3;
	index = 1;
	dead = 1;
}

if (index < targetindex)
	index += 0.5;
if (index == 3)
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = bottom;
	my_id.image_index = 4;
	my_id.image_angle = image_angle;
	instance_destroy();
	scrFinishExecution(sprPWalkDW);
}

