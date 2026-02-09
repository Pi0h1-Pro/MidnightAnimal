if (image_index == 0 && hurtindex == targetindex && targetindex < 10)
{
	if (targetindex == 8)
		targetindex = 10;
	if (targetindex == 4)
		targetindex = 8;
	if (targetindex == 0)
		targetindex = 4;
	hurtindex += 1;
	image_index = 7;
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndPunch);
	repeat (1 + random(3))
	{
		instance_create(x + lengthdir_x(18, image_angle - 1 + random(2)), y + lengthdir_y(18, image_angle - 1 + random(2)), objBloodSquirt);
	}
}

