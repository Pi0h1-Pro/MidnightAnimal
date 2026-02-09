if (image_index >= 5 && bled == 0)
{
	sound_ps(choose(sndPunch, sndPunch1, sndPunch2, sndPunch3));
	sound_ps(sndDoorHit);
	sound_ps(sndBonesBreak);
	global.shake = 12;
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	// repeat(2) scrMeleeBlood(x + lengthdir_x(4, image_angle), y + lengthdir_y(4, image_angle))
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEFatKneed;
	my_id.image_index = image_index;
	my_id.image_angle = image_angle;
	my_id.speed = 1.5;
	my_id.direction = image_angle;
	my_id.friction = 0.1;
	bled = 1;
}

