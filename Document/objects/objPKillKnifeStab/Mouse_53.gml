if (image_index == 0)
{
	energie -= 1;
	image_speed = 0.2;
	image_index = 1;
	sound_ps(sndHit);
	sound_ps(choose(sndCut1, sndCut2));
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	global.shake = 8;
	repeat (3 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 110 + random(20);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
}

