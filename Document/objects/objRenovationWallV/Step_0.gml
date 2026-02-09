// Destroy with melee.
if (!scrMovingPlayerExists())
	exit;
if (place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer))
{
	if ((scrIsSwinging(objPlayer.sprite_index) && scrCurrentWeaponExt(objPlayer.sprite_index) == 19)
		|| objPlayer.sprite_index == pierretteBashShield)
	{
		repeat (16)
		{
			my_id = instance_create(x, y, objDebrisLarge);
			my_id.speed = random(4);
		}
		
		sound_ps(choose(sndWoodenBreak1, sndWoodenBreak2, sndWoodenBreak3));
		repeat (24)
		{
			my_id = instance_create(x, y + random(32), objDebrisLarge);
			my_id.sprite_index = sprRenovationWallDebris;
			if (objPlayer.x > x)
				my_id.direction = 180 - 10 + random(20);
			else
				my_id.direction = -10 + random(20);
			my_id.speed = 2 + random(3);
		}
		instance_destroy();
		mp_grid_destroy(global.grid);
		scrInitPathFinding();
	}
}

