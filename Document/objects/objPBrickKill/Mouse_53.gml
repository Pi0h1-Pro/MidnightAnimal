if (image_index == 0 && hurtindex == targetindex && targetindex < 15)
{
	if (targetindex == 12)
		targetindex = 15;
	if (targetindex == 8)
		targetindex = 12;
	if (targetindex == 4)
		targetindex = 8;
	if (targetindex == 0)
		targetindex = 4;
	hurtindex += 1;
	image_index = 7;
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1));
	sound_ps(sndPunch);
	global.shake = 10;
	repeat (1 + random(3))
	{
		instance_create(x + lengthdir_x(18, image_angle - 1 + random(2)), y + lengthdir_y(18, image_angle - 1 + random(2)), objBloodSquirt);
	}
}

