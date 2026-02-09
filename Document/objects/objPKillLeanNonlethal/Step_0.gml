if (image_index < 4)
	image_index += 0.35;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprite;
	my_id.image_index = 9;
	my_id.image_angle = image_angle;
	scrFinishExecution(sprPWalkUnarmed);
}

if (image_index > 2 && dead == 0)
{
	sound_ps(sndDoorHit);
	sound_ps(choose(sndPunch, sndPunch1, sndPunch2, sndPunch3));
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	global.shake = 12;
	dead = 1;
}

