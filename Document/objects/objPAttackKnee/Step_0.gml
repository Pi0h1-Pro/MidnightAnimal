if (image_index >= 5 && bled == 0)
{
	sound_ps(choose(sndPunch, sndPunch1, sndPunch2, sndPunch3));
	sound_ps(sndDoorHit);
	sound_ps(sndBonesBreak);
	global.shake = 10;
	
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	my_id = instance_create(x, y, objKnockedOut);
	my_id.image_angle = image_angle;
	my_id.speed = 1.5;
	my_id.direction = image_angle;
	my_id.friction = 0.1;
	bled = 1;
}

