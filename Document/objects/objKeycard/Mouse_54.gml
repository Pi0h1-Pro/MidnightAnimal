if (place_meeting(x + lengthdir_x(10, objPlayer.dir), y + lengthdir_y(10, objPlayer.dir), objPlayer))
{
	instance_destroy();
	global.locked = 0;
	sound_play(sndPickupWeapon);
	with (objPlayerMouse)
		alarm[1] = 1;
}

