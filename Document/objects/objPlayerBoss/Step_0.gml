if (global.xbox == 1)
	scrXboxRestartDead();
global.my_id = id;
global.test = 0;
if (keyboard_check_pressed(ord(global.restartkey)))
	event_perform(ev_keypress, ord("R"));
if (speed > 0)
{
	legindex += speed * 0.25;
}
else
	legindex = 0;

if (state == 0)
{
	if (y < objPlayerBikerHack.y - 80)
	{
		vspeed = 1;
		image_index += 0.15;
		direction = 270;
	}
	else
	{
		vspeed = 0;
		direction = 270;
		with (objPlayerBikerHack)
		{
			my_id = instance_create(x, y, objPlayerBikerHouse);
			my_id.active = 0;
			instance_destroy();
		}
		with (objDoorH)
		{
			solid = 1;
			image_angle = 0;
		}
		with (objDoorH2)
		{
			solid = 1;
			image_angle = 0;
		}
		state = 1;
	}
}

if (state == 1)
{
	scrGetMessage(1);
	state = 2;
}

if (state == 2)
{
	if (!instance_exists(objPhoneConversation))
	{
		with (objPlayerBikerHouse)
		{
			my_id = instance_create(x, y, objPlayerBiker);
			instance_destroy();
		}
		
		if (point_distance(x, y, objGolfBag.x, objGolfBag.y) > 12)
		{
			direction = point_direction(x, y, objGolfBag.x, objGolfBag.y);
			if (speed < 3)
				speed += 0.5;
			else
				speed = 3;
			image_index += speed * 0.1;
		}
		else
		{
			sound_play(sndPickupWeapon);
			objGolfBag.image_index = 1;
			sprite_index = sprPWalkClub;
			image_index += speed * 0.1;
			state = 3;
		}
	}
	else
	{
		with (objPlayerBikerHouse)
		{
			viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24, dir), y + lengthdir_y(24, dir)) * 0.1;
			viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24, dir), y + lengthdir_y(24, dir));
			
			__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed, viewdir)) );
			__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed, viewdir)) );
			
			vdist = point_distance(x, y, room_width / 2, room_height / 2);
			vdir = point_direction(room_width / 2, room_height / 2, x, y);
			__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );
		}
	}
}

if (state == 3)
{
	if (instance_exists(objPlayer))
	{
		motion_add(point_direction(x, y, objPlayer.x, objPlayer.y), 0.5);
		if (speed > 3)
			speed = 3;
		if (point_distance(x, y, objPlayer.x, objPlayer.y) < 12)
		{
			if (sprite_index == sprPWalkClub)
			{
				sprite_index = sprPAttackClub;
				image_speed = 0.5;
				sound_play(choose(sndSwing1, sndSwing2));
			}
			global.my_id = id;
			scrPlayerDieMelee();
			state = 4;
		}
	}
	else
		state = 4;
}

if (state == 4)
{
	friction = 0.35;
	image_speed = speed * 0.1;
}


if (state == 2 || state == 3)
{
	global.my_id = id;
	with (objPlayer)
	{
		if (sprite_index == sprNicoleAttackCleaver)
		{
			if (place_meeting(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), global.my_id))
				global.test = 1;
		}
	}
	if (global.test > 0)
	{
		pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
		scrMeleeBlood(x, y);
		direction = point_direction(objPlayer.x, objPlayer.y, x, y);
		sprite_index = sprPKneel;
		speed = 3;
		image_index = 0;
		friction = 0.25;
		sound_play(choose(sndCut1, sndCut2));
		image_angle = direction - 180;
		sound_play(sndDoorHit);
		sound_play(sndHit);
		with (objPlayerBiker)
		{
			my_id = instance_create(x, y, objPlayerBikerHouse);
			my_id.active = 0;
			instance_destroy();
		}
		maskon = 0;
		my_id = instance_create(x, y, objMaskDrop);
		my_id.direction = direction - 20 + random(90);
		my_id.speed = 3;
		state = 5;
	}
}

if (state == 5)
{
	image_speed = 0;
	if (speed > 0)
		exit;
	if (image_index < 4)
		image_index += 0.15;
	else
	{
		with (objPlayerBikerHouse)
			active = 1;
		if (place_meeting(x, y, objPlayerBikerHouse))
		{
			with (objPlayerBikerHouse)
			{
				instance_create(x, y, objPlayerBikerKick);
				instance_destroy();
			}
		}
	}
}

