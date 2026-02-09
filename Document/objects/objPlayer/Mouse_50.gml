/// @description  ABILITY : Leviathan attack behaviour.
if (sprite_index == sprPWalkLeviathan)
{
	image_speed = 0.5;
	reload = 1;
	sound_ps(sndSwingHeavy2);
	sprite_index = sprPAttackLeviathan;
	
	if (round(random(10)) == 2)
	{
		my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objPsychicSlashMassive);
		if (instance_exists(my_id))
		{
			sound_ps(sndLeviathanCharged);
			sound_ps(sndMassiveSlash);
			my_id.direction = dir;
			my_id.image_angle = my_id.direction;
			my_id.image_xscale = random_range(0.5, 0.7);
			my_id.image_yscale = left;
		}
	}
	else
	{
		slash = instance_create(x + lengthdir_x(80, dir), y + lengthdir_y(80, dir), objPsychicSlash);
		if (instance_exists(slash))
		{
			slash.direction = dir;
			slash.image_xscale = -random_range(0.6, 1.2);
			slash.image_yscale = left;
			slash.image_angle = slash.direction;
		}
	}
	global.shake = 8;
}

/// THOMAS: Attack.
if (sprite_index == thomasWalk)
{
	sound_ps(sndSwingFists);
	sprite_index = choose(thomasStrikeR1, thomasStrikeR2, thomasStrikeR3, thomasStrikeR4);
	
	// image_index = 4
	image_speed = 0.5;
	reload = 1;
	global.shake = 5;
}

/// Automatic weapons.
if (scrIsDisarming() || reload > 0 || teleport == true)
	exit;
if (global.active == 1)
	scrPlayerAttackAuto();

