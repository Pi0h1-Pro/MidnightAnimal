scrMoveSolidOn();
if (instance_exists(objPlayer))
{
	if (checkreload > 0)
		checkreload -= 1;
	else
	{
		checkreload = 5;
		check = scrLook(objPlayer.x, objPlayer.y, 4);
		if (check == 0)
		{
			alert = 1;
			speed = 0;
		}
	}
	
	if (alert == 1)
	{
		direction = scrRotate(direction, point_direction(x, y, objPlayer.x, objPlayer.y), 6);
		speed = 0;
		image_speed = 0;
		dist = point_distance(x, y, objPlayer.x, objPlayer.y);
		if (dist < 64)
		{
			if (talked == 0)
			{
				scrGetMessage(0);
				with (objPlayerBiker)
				{
					my_id = instance_create(x, y, objPlayerBikerHouse);
					my_id.dir = dir;
					my_id.sprite_index = sprNicoleWalk;
					instance_destroy();
				}
				talked = 1;
			}
			else
			{
				if (!instance_exists(objPhoneConversation))
				{
					dir = point_direction(objPlayer.x, objPlayer.y, x, y);
					direction = dir - 180;
					if (place_free(x + lengthdir_x(1, dir), y))
						x += lengthdir_x(1, dir);
					if (place_free(x, y + lengthdir_y(1, dir)))
						y += lengthdir_y(1, dir);
					image_speed = 0.1;
					if (talked == 1)
					{
						with (objPlayerBikerHouse)
						{
							my_id = instance_create(x, y, objPlayerBiker);
							my_id.dir = dir;
							my_id.sprite_index = sprNicoleWalk;
							instance_destroy();
						}
						talked = 2;
					}
				}
			}
		}
	}
}

if (alert == 0)
{
	image_speed = speed * 0.1;
	if (!place_free(x + hspeed * 4, y))
		hspeed = -hspeed;
	if (!place_free(x, y + vspeed * 4))
		vspeed = -vspeed;
}

scrMoveSolidOff();


if (alert == 1)
{ }
global.my_id = id;
global.test = 0;
with (objPlayer)
{
	if (sprite_index == sprNicoleAttackCleaver)
	{
		if (place_meeting(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), global.my_id) || place_meeting(x, y, global.my_id))
			global.test = 1;
	}
}
if (global.test == 1)
{
	pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
	scrMeleeBlood(x, y);
	
	with (objPlayerBiker)
	{
		my_id = instance_create(x, y, objPlayerBikerHouse);
		my_id.dir = dir;
		my_id.sprite_index = sprNicoleWalk;
		instance_destroy();
	}
	my_id = instance_create(x, y, objDeadBody);
	my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
	my_id.speed = 2;
	my_id.sprite_index = sprCeoDead;
	my_id.image_index = floor(random(4));
	my_id.image_angle = my_id.direction;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(sndHit);
	instance_destroy();
}

