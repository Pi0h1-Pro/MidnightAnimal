if (image_index < 8)
	image_index += 0.25;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprEPoolKill;
	my_id.image_index = 3;
	scrFinishExecution(sprPWalkUnarmed);
}
if (image_index >= 5 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	global.shake = 14;
	sound_ps(choose(sndCut1, sndCut2));
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_ps(sndPunch);
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	repeat (3 + random(3))
	{
		instance_create(x + lengthdir_x(24, image_angle) - 1 + random(2), y + lengthdir_y(24, image_angle) - 1 + random(2), objBloodSquirt);
	}
}

