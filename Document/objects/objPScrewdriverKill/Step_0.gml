if (image_index < 15)
	image_index += 0.4;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = bottom;
	my_id.image_index = 15;
	
	scrFinishExecution(sprPWalkScrewdriver);
}

if (image_index >= 5 && bled == 0)
{
	bled = 1;
	sound_ps(choose(sndCut1, sndCut2));
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	global.shake = 6;
	repeat (2 + random(3))
		instance_create(x + lengthdir_x(15, image_angle) - 1 + random(2), y + lengthdir_y(15, image_angle) - 1 + random(2), objBloodSquirt);
}

if (image_index >= 13 && bled == 1)
{
	bled = 2;
	sound_ps(choose(sndCut1, sndCut2));
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	global.shake = 10;
	repeat (2 + random(3))
		instance_create(x + lengthdir_x(15, image_angle) - 1 + random(2), y + lengthdir_y(15, image_angle) - 1 + random(2), objBloodSquirt);
}

