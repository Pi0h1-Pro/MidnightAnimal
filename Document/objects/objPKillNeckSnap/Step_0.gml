if (image_index < 11)
	image_index += 0.5;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEDieNeckSnap;
	my_id.image_index = 11;
	my_id.image_angle = image_angle;
	
	scrFinishExecution(sprPWalkUnarmed);
}

if (bled == 0 && image_index >= 6)
{
	bled = 1;
	sound_ps(sndBonesBreak);
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	global.shake = 12;
}

