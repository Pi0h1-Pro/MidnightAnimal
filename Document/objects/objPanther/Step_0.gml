if (speed > 0)
	image_angle = direction + 90;
if (!instance_exists(objPlayer))
{
	speed = 0;
	if (sprite_index == sprPantherRun || sprite_index == sprPantherWalk)
	{
		sprite_index = sprPantherSit;
		image_speed = 0.075;
	}
	speed = 0;
	exit;
}

if (state == 1)
{
	sprite_index = sprPantherWalk;
	depth = 0;
	if (pwait > 0)
		pwait -= 1;
	else
	{
		mask_index = sprWeaponMask;
		if (!scrCollisionLineDouble(x, y, objPlayer.x, objPlayer.y, 4, objSolid, objWall))
		{
			direction = point_direction(x, y, objPlayer.x, objPlayer.y);
			if (speed < 1)
				speed += 0.2;
			image_speed = speed * 0.1;
			if (point_distance(x, y, objPlayer.x, objPlayer.y) < 12)
			{
				global.my_id = id;
				scrPlayerDiePantherBite(0);
				instance_destroy();
				exit;
			}
		}
		else
		{
			speed = 0;
			sprite_index = sprPantherSit;
			image_index += 0.1;
		}
		mask_index = sprMask;
	}
	if (wait > 0)
		wait -= 1;
	else
		state = 2;
}

if (state == 2)
{
	sprite_index = sprPantherRun;
	if (pwait > 0)
		pwait -= 1;
	else
	{
		mask_index = sprWeaponMask;
		if (!scrCollisionLineDouble(x, y, objPlayer.x, objPlayer.y, 4, objSolid, objWall))
		{
			direction = point_direction(x, y, objPlayer.x, objPlayer.y);
			speed = 5;
			image_speed = speed * 0.1;
			if (point_distance(x, y, objPlayer.x, objPlayer.y) < 12)
			{
				global.my_id = id;
				scrPlayerDiePantherBite(0);
				instance_destroy();
				exit;
			}
		}
		else
		{
			speed = 0;
			sprite_index = sprPantherSit;
			image_index += 0.1;
		}
		mask_index = sprMask;
	}
}

if (state >= 1 && state < 3)
{
	if (scrIsSwinging(objPlayer.sprite_index))
	{
		with (objPlayer)
		{
			addx = lengthdir_x(8, dir);
			addy = lengthdir_y(8, dir);
			x += addx;
			y += addy;
		}
		if (place_meeting(x, y, objPlayer) || place_meeting(x - objPlayer.addx, y - objPlayer.addy, objPlayer))
		{
			path_end();
			if (energie == 0)
			{
				pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
				scrMeleeBlood(x, y);
				sound_play(sndDoorHit);
				sound_play(sndHit);
				global.shake = 10;
				my_id = instance_create(x, y, objDeadBody);
				my_id.image_angle = direction + 90;
				my_id.sprite_index = sprPantherDead;
				my_id.image_index = floor(random(3));
				instance_destroy();
			}
			else
			{
				pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
				scrBlood(x, y);
				energie -= 1;
				speed = 0;
				sprite_index = sprPantherHitback;
				image_index = 0;
				image_speed = 0;
				hit = 0;
				sound_play(sndHit);
				if (global.maskindex == 2 || global.maskindex == 0)
					sound_play(sndPunch);
				else
					sound_play(sndHitWall);
				state = 3;
			}
		}
		
		with (objPlayer)
		{
			x -= addx;
			y -= addy;
		}
	}
}


if (state == 3)
{
	path_end();
	if (wait > 0)
		wait -= 1;
	else
	{
		if (image_index < 14)
			image_index += 0.5;
		else
		{
			state = 1;
			sprite_index = sprPantherWalk;
			exit;
		}
		if (image_index > 7 && hit == 0)
		{
			hit = 1;
			sound_play(choose(sndSwing1, sndSwing2));
		}
		if (image_index > 8 && place_meeting(x + lengthdir_x(8, direction), y + lengthdir_y(8, direction), objPlayer))
		{
			global.my_id = id;
			global.shake = 10;
			scrPlayerDieMelee();
		}
	}
}

