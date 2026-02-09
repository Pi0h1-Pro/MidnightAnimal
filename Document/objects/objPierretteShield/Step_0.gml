/// @description  Pick up shield.
if (!scrMovingPlayerExists())
	exit;

if (sprite_index == pierretteShield)
{
	// if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 {
	if (image_index == 0)
		image_index = 1;
	if (radius < max_radius)
		radius += 4;
	else
		radius = max_radius;
	if (image_index == 1)
	{
		if (keyboard_check_pressed(global.abilitykey))
		{
			sound_ps(sndShieldFold);
			sprite_index = pierretteShieldFold;
			image_index = 0;
			image_speed = 0.4;
		}
	}
	
	/*} else {
        if image_index = 1 image_index = 0
    }*/
}

if (sprite_index == pierretteShieldFold)
{
	if (radius > 0)
		radius -= 4;
}

if (sprite_index == pierretteShieldFolded)
{
	if (point_distance(x, y, objPlayer.x, objPlayer.y) < 32)
	{
		if (image_index == 0)
			image_index = 1;
		if (image_index == 1)
		{
			if (keyboard_check_pressed(global.interactkey))
			{
				sound_ps(sndPickUpGeneric);
				with (objPlayer)
				{
					sprite_index = pierretteWalkShield;
					image_index = 0;
					image_speed = 0;
				}
				instance_destroy();
			}
		}
	}
}

if (radius == max_radius)
{
	if (objPlayer.hp < objPlayer.max_hp)
	{
		// if point_distance(x, y, objPlayer.x, objPlayer.y) > max_radius * 1.2 objPlayer.hp += 0.01
		if (point_distance(x, y, objPlayer.x, objPlayer.y) > max_radius && point_distance(x, y, objPlayer.x, objPlayer.y) < max_radius * 1.2)
			objPlayer.hp += 0.05;
		if (point_distance(x, y, objPlayer.x, objPlayer.y) > max_radius * 0.8 && point_distance(x, y, objPlayer.x, objPlayer.y) < max_radius)
			objPlayer.hp += 0.1;
		if (point_distance(x, y, objPlayer.x, objPlayer.y) > max_radius * 0.6 && point_distance(x, y, objPlayer.x, objPlayer.y) < max_radius * 0.8)
			objPlayer.hp += 0.15;
		if (point_distance(x, y, objPlayer.x, objPlayer.y) < max_radius * 0.6)
			objPlayer.hp += 0.2;
	}
}

/* */
/*  */
