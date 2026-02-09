if (instance_number(objEnemy) + instance_number(objKnockedOut) == 0)
{
	with (instance_nearest(x, y, objDoorH))
		solid = 0;
	if (objPlayer.y < y + 64 && objPlayer.y > y && objPlayer.x > x - 32 && objPlayer.x < x + 32)
	{
		image_angle = scrRotate(image_angle, point_direction(x, y, objPlayer.x, objPlayer.y) + 90, 10);
		
		// if sprite_index=sprSisterDrawGun {if image_index<3 image_index+=0.2 else {sprite_index=sprSisterIdle image_speed=0.2}}
		if (sprite_index == sprOldmanDeath)
		{
			if (image_index < 18)
				image_index += 0.5;
		}
		if (state == 0)
		{
			if (objPlayer.y < 224)
			{
				with (objPlayerMouse)
				{
					my_id = instance_create(x, y, objPlayerMouseHouse);
					my_id.image_index = image_index;
					my_id.dir = dir;
					my_id.maskindex = global.maskindex;
					my_id.maskon = 1;
					my_id.sprite_index = sprite_index;
					my_id.active = 0;
					my_id.aimon = 0;
					instance_destroy();
				}
				state = 1;
			}
		}
		
		if (state == 1)
		{
			with (objPlayerMouseHouse)
			{
				lastx = x;
				lasty = y;
				if (x < 240)
					x += 1;
				if (y > 144)
					y -= 1;
				scrRotate(dir, point_direction(x, y, objParker.x, objParker.y), 6);
				if (lastx == x && lasty == y)
					objParker.state = 2;
				else
				{
					image_index += 0.15;
					legindex += 0.25;
					dir = point_direction(lastx, lasty, x, y);
					legdir = dir;
				}
			}
		}
		
		if (state == 2)
		{
			objPlayer.image_index = 0;
			objPlayer.legindex = 0;
			objPlayer.aimon = 0;
			objPlayer.dir = point_direction(objPlayer.x, objPlayer.y, x, y);
			scrGetMessage(0);
			state = 3;
			wait = 100;
		}
		
		if (state == 3)
		{
			if (!instance_exists(objPhoneConversation))
			{
				if (wait > 0)
					wait -= 1;
				else
				{
					objPlayer.sprite_index = sprPAttackBossgun;
					if (objPlayer.image_index < 19)
						objPlayer.image_index += 0.15;
					else
					{
						state = 4;
						objPlayer.sprite_index = sprPWalkUnarmed;
						objPlayer.image_index = 0;
						wait = 60;
						
						with (objPlayer)
						{
							my_id = instance_create(x + 5, y + 5, objBossgun);
							my_id.friction = 0.1;
							my_id.speed = 1;
							my_id.direction = -45;
						}
					}
					if (objPlayer.image_index > 9 && shoot == 0)
					{
						shoot = 1;
						with (objPlayer)
						{
							my_id = instance_create(x + lengthdir_x(24, dir), y + lengthdir_y(24, dir), objBullet);
							sound_play(sndMagnum);
							my_id.direction = dir;
							my_id.speed = 12;
							my_id.image_angle = dir;
						}
					}
				}
			}
			else
			{
				image_index += 0.1;
			}
		}
	}
}

