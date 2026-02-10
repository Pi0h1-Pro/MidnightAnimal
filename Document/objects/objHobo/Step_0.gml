if (global.xbox == 1)
	scrXboxRestart();
if (keyboard_check_pressed(ord(global.restartkey)))
	event_perform(ev_keypress, ord("R"));
if (state == 0)
{
	if (objEffector.amount >= 180)
	{
		if (instance_exists(objPlayerMouse))
		{
			with (objPlayerMouse)
			{
				my_id = instance_create(x, y, objPlayerMouseHouse);
				my_id.active = 0;
				my_id.sprite_index = sprite_index;
				my_id.ammo = ammo;
				global.maskon = 0;
				my_id.maskon = 0;
				instance_destroy();
			}
		}
		scrPlaySong(working_directory + "\\Redline.mp3");
		scrGetMessage(0);
		state = 1;
		test = objPlayer.persistent;
		objPlayer.persistent = 0;
		global.loaded = 1;
		//game_save(working_directory + "\\tempsave.sav");
		global.loaded = 0;
		objPlayer.persistent = test;
	}
}

if (state == 1)
{
	if (!instance_exists(objPhoneConversation))
	{
		state = 2;
		with (objPlayer)
		{
			my_id = instance_create(x, y, objPlayerMouse);
			my_id.active = 0;
			my_id.sprite_index = sprPWalkUnarmed;
			my_id.ammo = ammo;
			my_id.maskon = 0;
			instance_destroy();
		}
	}
}


if (instance_exists(objPlayer))
{
	global.test = 0;
	with (objPlayer)
	{
		if (place_meeting(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), objHobo))
		{
			if (sprite_index == sprPAttackPunch || sprite_index == sprPAttackUnarmed1)
				global.test = 2;
			if (sprite_index == sprPAttackBat)
				global.test = 1;
		}
	}
	if (global.test == 1)
	{
		pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
		scrMeleeBlood(x, y);
		my_id = instance_create(x, y, objHoboKnockedOut);
		my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
		my_id.speed = 2;
		my_id.image_angle = my_id.direction;
		if (sprite_index == sprHoboWalkBat || sprite_index == sprHoboAttack)
		{
			my_id = instance_create(x, y, objWeaponThrow);
			my_id.image_index = 4;
			my_id.direction = random(360);
			my_id.speed = random(2);
			my_id.ammo = 0;
		}
		sound_play(sndDoorHit);
		sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
		instance_destroy();
	}
	
	if (global.test == 2)
	{
		my_id = instance_create(x, y, objHoboKnockedOut);
		my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
		my_id.speed = 2;
		my_id.image_angle = my_id.direction;
		if (sprite_index == sprHoboWalkBat || sprite_index == sprHoboAttack)
		{
			my_id = instance_create(x, y, objWeaponThrow);
			my_id.image_index = 4;
			my_id.direction = random(360);
			my_id.ammo = 0;
			my_id.speed = random(2);
		}
		sound_play(sndDoorHit);
		instance_destroy();
	}
}
else
{
	speed = 0;
	if (sprite_index == sprHoboWalk)
		image_speed = 0;
	exit;
}

scrMoveSolidOn();

if (reload > 0)
	reload -= 1;
if (sprite_index == sprHoboWalk)
	nothing = 0;
else
	global.factor += sign(alert);
if (path_index > 0)
{
	if (image_speed < 0.2)
		image_speed = 0.2;
	if (alert == 0 && path_position == 1)
		path_end();
}
else
{
	if (image_speed < 1)
		image_speed = speed * 0.1;
}

if (image_speed >= 0.5)
{
	if (place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objPlayer))
	{
		global.my_id = id;
		scrPlayerDieMelee();
	}
}

scrHoboStep();
scrMoveSolidOff();

