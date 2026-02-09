if (!instance_exists(objPlayerMouseHouse) || answered == 1)
	exit;
if (place_meeting(x + lengthdir_x(12, objPlayer.dir - 180), y + lengthdir_y(12, objPlayer.dir - 180), objPlayer) && called == 1)
{
	with (objPlayer)
	{
		if (sprite_index == sprPWalkUnarmed || sprite_index == sprPWalkUnarmedLSD || sprite_index == sprPAttackPunch || sprite_index == sprPAttackUnarmed1 || sprite_index == sprPAttackBash)
			noweapon = 1;
		else
			noweapon = 0;
		if (noweapon == 0)
		{
			my_id = instance_create(x, y, objWeaponThrow);
			my_id.direction = random(360);
			my_id.speed = 2 + random(1);
			my_id.image_index = scrCurrentWeaponExt(sprite_index);
			my_id.ammo = ammo;
		}
	}
	objPlayer.sprite_index = sprPTakePhone;
	objPlayer.image_index = 0;
	objPlayer.active = 0;
	image_index = 1;
	scrGetMessage(0);
	answered = 1;
	sound_stop(sndPhoneCall);
	sound_play(sndPhone);
	global.done = 1;
}

