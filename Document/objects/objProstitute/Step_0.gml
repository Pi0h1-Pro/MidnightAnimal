if (active == 0 || !instance_exists(objPlayer))
	exit;
if (instance_exists(objBoss1Die))
	exit;

if (wait > 0)
{
	wait -= 1;
	exit;
}

if (instance_number(objEnemy) + instance_number(objKnockedOut) == 0)
{
	with (objDoorH) // instance_nearest(x, y, objDoorH)
		solid = 0;
}

if (state == 0)
{
	if (objPlayer.y < y + 64 && objPlayer.y > y && objPlayer.x > x - 32 && objPlayer.x < x + 32)
	{
		// image_angle = scrRotate(image_angle, point_direction(x, y, objPlayer.x, objPlayer.y) + 90, 10)
		// objPlayer.active = 0
		// objPlayer.aimon = 0
		objPlayer.dir = point_direction(objProstitute.x, objProstitute.y, x, y);
		if (talked == 0)
		{
			if (sprite_index == sprPWalkUnarmed || sprite_index == sprPWalkUnarmedLSD || sprite_index == sprPAttackPunch || sprite_index == sprPAttackUnarmed1)
				noweapon = 1;
			else
				noweapon = 0;
			if (noweapon == 0)
			{
				my_id = instance_create(x, y, objWeaponThrow);
				my_id.direction = direction - 45;
				my_id.speed = 1 + random(1);
				my_id.friction = 0.2;
				my_id.image_index = scrCurrentWeapon();
			}
			objPlayer.sprite_index = sprPWalkUnarmed;
			if (!instance_exists(objPhoneConversation))
				scrGetMessage(3);
			talked = 1;
			state = 1;
		}
	}
}

if (state == 1)
{
	if (!instance_exists(objPhoneConversation))
	{
		image_speed = 0;
		state = 2;
		image_index = 0;
		with (objPlayer)
			active = 1;
	}
	else
	{
		image_speed = 0.1;
		sprite_index = sprGirlfriendTalk;
	}
}

if (state == 2)
{
	global.test = 0;
	pickup = 0;
	if (global.xbox == 1)
	{
		if (gettrigger_r(0) > 100 || gettrigger_l(0) > 100)
			pickup = 1;
	}
	else
	{
		if (mouse_check_button_pressed(mb_right) || mouse_check_button(mb_left))
			pickup = 1;
	}
	if (pickup == 1)
	{
		with (objPlayer)
		{
			if (place_meeting(x + lengthdir_x(12, dir), y + lengthdir_y(12, dir), objProstitute))
			{
				sprite_index = sprPWalkGirlfriend;
				
				// instance_create(x, y, objGoToCar)
				scrUpdateMaskPos(sprite_index);
				with (objDoorV)
					solid = 0;
				global.test = 1;
			}
		}
	}
	if (global.test == 1)
		instance_destroy();
}

