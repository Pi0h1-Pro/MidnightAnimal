if (sprite_index == sprBodyguardKnockedOut)
{
	if (instance_exists(objPlayer))
	{
		if (point_distance(x, y, objPlayer.x, objPlayer.y) < 12)
		{
			my_id = -112345;
			my_id = instance_create(x, y, objPKillNinjaGirl);
			if (instance_exists(my_id))
			{
				my_id.image_angle = direction;
				my_id.maskon = 1;
				my_id.maskindex = global.maskindex;
				global.executionx = objPlayer.x;
				global.executiony = objPlayer.y;
				
				my_id2 = instance_create(x + lengthdir_y(6, image_angle + 90), y + lengthdir_y(6, image_angle + 90), objMaskDrop);
				my_id2.sprite_index = sprBGSword;
				my_id2.direction = direction + 70 - random(40);
				my_id2.speed = 2 + random(1);
				
				instance_destroy();
				with (objPlayerMouse)
					instance_destroy();
			}
		}
	}
	exit;
}

if (state == 0)
{
	if (instance_exists(objPlayer))
	{
		if (objPlayer.y < y + 12)
		{
			if (sprite_index == sprBodyguardAttack)
			{
				direction = point_direction(x, y, objPlayer.x, objPlayer.y);
				my_id = instance_create(x, y, objBodyguardKnife);
				my_id.direction = direction;
				my_id.speed = 12;
				my_id.image_angle = direction;
				sprite_index = sprBodyguardThrow;
				image_speed = 0.5;
			}
		}
	}
	
	if (!instance_exists(objPanther) && !instance_exists(objPantherBite))
	{
		if (instance_exists(objPlayer))
		{
			if (wait > 0)
				wait -= 1;
			else
			{
				// scrGetMessage(2)
				state = 3;
				wait = 2;
			}
		}
	}
}



if (state == 3)
{
	if (scrIsSwinging(objPlayer.sprite_index)
		|| objPlayer.sprite_index == sprPAttackPunch
		|| objPlayer.sprite_index == sprPAttackUnarmed1
		&& place_meeting(x, y, objPlayer))
	{
		path_end();
		sprite_index = sprBodyguardKnockedOut;
		speed = 1.5;
		friction = 0.1;
		direction = other.direction;
		global.shake = 8;
		sound_play(sndHit);
		sound_play(sndPunch);
		scrBlood(x, y);
	}
	else if (!instance_exists(objPlayer))
	{
		if (sprite_index == sprBodyguardAttack)
			state = 4;
	}
	else
	{
		if (wait > 0)
			wait -= 1;
		else
		{
			pwait = 0;
			if (pwait > 0)
				pwait -= 1;
			else
			{
				mask_index = sprWeaponMask;
				if (instance_exists(objPlayer) && !scrCollisionLineDouble(x, y, objPlayer.x, objPlayer.y, 4, objSolid, objWall))
				{
					direction = point_direction(x, y, objPlayer.x, objPlayer.y);
					speed = 4;
					if (image_index < 2)
						image_index += 0.25;
					legindex += speed * 0.25;
					if (point_distance(x, y, objPlayer.x, objPlayer.y) < 38)
					{
						global.my_id = id;
						global.shake = 10;
						scrPlayerDieMelee();
						image_index = 0.25;
						speed = 0;
						state = 4;
					}
				}
				else
				{
					speed = 0;
					legindex = 0;
					if (sprite_index == sprBodyguardAttack)
					{
						direction = point_direction(x, y, objPlayer.x, objPlayer.y);
						my_id = instance_create(x, y, objBodyguardKnife);
						my_id.direction = direction;
						my_id.speed = 12;
						my_id.image_angle = direction;
						sprite_index = sprBodyguardThrow;
						image_speed = 0.5;
					}
					
					// objPlayer.myxspeed = 0
					// objPlayer.myyspeed = 0
				}
				mask_index = sprMask;
			}
		}
	}
}

if (state == 4)
{
	if (image_index > 0)
	{
		if (image_index < 23)
			image_index += 0.25;
	}
}

