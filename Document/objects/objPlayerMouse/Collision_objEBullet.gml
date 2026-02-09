if (instance_exists(objLSD))
{
	with (other)
		instance_destroy();
	scrCreateBloodWhirl(x, y);
	alarm[0] = 10;
	global.shake = 12;
	repeat (2)
		scrMeleeBlood(x, y);
	scrMeleeBlood(x, y);
	repeat (24)
	{
		my_id = instance_create(x, y, objBrains);
		my_id.direction = random(360);
		my_id.speed = 4 + random(3);
	}
	repeat (16)
	{
		my_id = instance_create(x, y, objIntestine);
		my_id.direction = random(360);
		my_id.speed = 3 + random(2.5);
	}
	repeat (16)
	{
		my_id = instance_create(x, y, objFleshChunk);
		my_id.direction = random(360);
		my_id.speed = 3.25 + random(2.5);
	}
	
	
	my_id = instance_create(x, y, objPlayerDead);
	my_id.bled = 1;
	my_id.sprite_index = sprBloodyExploded;
	instance_destroy();
	sound_play(sndPunch);
	sound_play(sndHit);
	sound_play(sndThunder);
}
else
{
	// Dodge bullet if rolling.
	if (sprite_index == sprPRoll)
	{
		if (image_index < 17)
			exit;
	}
	else
	{
		global.shake = 10;
		with (other)
		{
			if (place_meeting(x, y, objSolid) || place_meeting(x, y, objSolidCaster) || place_meeting(x, y, objWall))
			{
				move_outside_solid(direction - 180, speed * 2);
				if (!place_meeting(x, y, objPlayer))
					exit;
			}
		}
		global.my_id = id;
		image_xscale = 1.5;
		image_yscale = 1.5;
		bullets = 0;
		energie -= 1;
		
		image_xscale = 1;
		image_yscale = 1;
		edir = other.direction;
		test = 0;
		
		scrPlayerShot();
		
		if (bullets > 1 || round(random(1)) || energie < 0)
		{
			my_id = instance_create(x, y, objPlayerDead);
			if (bullets > 1)
				my_id.sprite_index = sprPBackShotgun;
			else
				my_id.sprite_index = sprPBackMachinegun;
			my_id.image_index = floor(random(8));
			my_id.direction = edir;
			my_id.speed = 1.5 + random(1) + bullets * 0.15;
			my_id.image_angle = my_id.direction;
			scrMeleeBlood(x, y);
			if (room == rmTrainstationEntrance || room == rmTrainstationDownstairs)
			{
				nothing = 1;
			}
			else
			{
				mask = instance_create(x + lengthdir_x(24, edir), y + lengthdir_y(24, edir), objMaskDrop);
				mask.direction = edir - 40 + random(80);
				mask.speed = 1.5 + random(1);
			}
			instance_destroy();
		}
	}
}

