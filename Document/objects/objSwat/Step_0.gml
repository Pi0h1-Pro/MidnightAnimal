global.done = 1;
if (sprite_index == sprSwatStumble)
{
	scrMoveSolidOn();
	if (!place_free(x + hspeed * 2, y))
		hspeed = 0;
	if (!place_free(x, y + vspeed * 2))
		vspeed = 0;
	scrMoveSolidOff();
	exit;
}
scrMoveSolidOn();
if (path_index > 0)
{
	image_speed = 0.2;
	if (alert == 0 && path_position == 1)
		path_end();
}
else
{
	if (image_speed < 1)
		image_speed = speed * 0.1;
}

scrESwatStep();
scrMoveSolidOff();

with (objEnemy)
{
	if (scrCantGetHit(object_index))
		nothing = 1;
	else
	{
		my_id = instance_create(x, y, objEGiveUp);
		my_id.image_angle = angle;
		if (sprite_index == sprEWalkUnarmed || sprite_index == sprEGiveUp)
			nothing = 1;
		else
		{
			my_id = instance_create(x, y, objWeaponThrow);
			my_id.direction = random(360);
			my_id.image_index = scrCurrentWeaponExt(sprite_index);
			my_id.ammo = ammo;
		}
		instance_destroy();
	}
}

if (!instance_exists(objPlayer))
{
	alert = 0;
	direction = round(direction * (1 / 10)) * 10;
	exit;
}
else
{
	if (objPlayer.sprite_index == sprPAttackPunch || objPlayer.sprite_index == sprPAttackUnarmed1 || objPlayer.sprite_index == sprPAttackClub || objPlayer.sprite_index == sprPAttackBat || objPlayer.sprite_index == sprPAttackKnife || objPlayer.sprite_index == sprPAttackPipe || objPlayer.sprite_index == sprPAttackPool || objPlayer.sprite_index == sprPAttackAxe || objPlayer.sprite_index == sprPAttackChainsaw || objPlayer.sprite_index == sprPAttackSword || objPlayer.sprite_index == sprPAttackSledgeHammer || objPlayer.sprite_index == sprPAttackPan || objPlayer.sprite_index == sprPAttackPot || objPlayer.sprite_index == sprPAttackMachete || objPlayer.sprite_index == sprPAttackDrill || objPlayer.sprite_index == sprPAttackKatanaSpecial)
	{
		if (place_meeting(x - lengthdir_x(24, objPlayer.dir), y - lengthdir_y(24, objPlayer.dir), objPlayer) || place_meeting(x, y, objPlayer))
		{
			my_id = instance_create(x, y, objSwatKnockedOut);
			my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
			my_id.speed = 1.5;
			my_id.friction = 0.1;
			my_id.angle = my_id.direction;
			sound_play(sndDoorHit);
			sound_play(sndPunch);
			instance_destroy();
		}
	}
}

