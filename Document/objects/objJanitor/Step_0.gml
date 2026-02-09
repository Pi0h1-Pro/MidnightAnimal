with (objBackgroundColor)
	instance_destroy();
if (active == 1)
{
	if (vol > 0.35)
		vol -= 0.01;
	scrSongVolume(vol);
	if (point_distance(x, y, objPlayerBikerHouse.x, objPlayerBikerHouse.y) < 60)
	{
		if (global.ending == 1)
			instance_create(x, y, objFinalDialogue2);
		else
			instance_create(x, y, objFinalDialogue);
		with (objPlayerBikerHouse)
		{
			legindex = 0;
			active = 0;
			aimon = 0;
			dir = point_direction(x, y, 324, 128);
		}
		active = 0;
	}
}

if (!instance_exists(objPlayerBikerHouse))
	exit;


if (point_distance(x, y, objPlayerBikerHouse.x, objPlayerBikerHouse.y) < 120)
{
	direction = scrRotate(direction, point_direction(x, y, objPlayerBikerHouse.x, objPlayerBikerHouse.y), 6);
}
global.test = 0;
global.my_id = id;

if (instance_exists(objJanitorDennisDie))
{
	if (point_distance(x, y, objPlayerBikerHouse.x, objPlayerBikerHouse.y) < 22)
	{
		my_id = instance_create((x + objPlayerBikerHouse.x) * 0.5, (y + objPlayerBikerHouse.y) * 0.5, objBikerKillJonatan);
		my_id.image_angle = point_direction(objPlayer.x, objPlayer.y, x, y);
		with (objPlayerBikerHouse)
			instance_destroy();
		instance_destroy();
	}
}
else
{
	with (objPlayer)
	{
		if (sprite_index == sprNicoleAttackCleaver)
		{
			if (place_meeting(x + lengthdir_x(12, dir), y + lengthdir_y(12, dir), global.my_id))
				global.test = 1;
		}
	}
	if (global.test == 1)
	{
		scrMeleeBlood(x, y);
		my_id = instance_create(x, y, objJanitorDennisDie);
		my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
		my_id.speed = 2;
		
		my_id2 = instance_create(x - 3 + random(6), y - 3 + random(6), objMCHelmet);
		my_id2.sprite_index = sprJanitorCap;
		my_id2.direction = random(360);
		my_id2.speed = 2 + random(1);
		sound_play(choose(sndCut1, sndCut2));
		my_id.image_angle = my_id.direction;
		sound_play(sndDoorHit);
		sound_play(sndHit);
		instance_destroy();
	}
}

if (instance_exists(objJanitorDennisDie))
{
	if (sprite_index == sprJanitorWalk)
	{
		image_index = 0;
		sprite_index = sprJanitorFinger;
	}
	if (image_index < 18)
		image_index += 0.1;
}

