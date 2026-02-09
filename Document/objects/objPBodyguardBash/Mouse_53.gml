if (global.xbox == 1)
	exit;
if (image_index == 3)
{
	sound_play(sndWeaponHit);
	global.shake = 3;
	if (energie > 0)
	{
		energie -= 1;
		image_index = 0;
	}
	else
	{
		sound_play(sndHit);
		sound_play(sndPunch);
		global.shake = 5;
		myx = x + lengthdir_x(20, image_angle);
		myy = y + lengthdir_y(24, image_angle);
		my_id = instance_create(myx, myy, objBigBlood);
		my_id = instance_create(x, y, objDeadBody);
		my_id.sprite_index = sprBodyguardDead;
		my_id.image_index = floor(random(4));
		my_id.image_angle = image_angle;
		if (global.controller == 1)
			my_id = instance_create(x, y, objPlayerController);
		else
			my_id = instance_create(x, y, objPlayerMouse);
		my_id.reload = 30;
		global.dir = image_angle - 180;
		with (my_id)
			move_outside_solid(global.dir, 16);
		instance_destroy();
	}
}

