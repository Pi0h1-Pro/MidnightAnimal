if (!instance_exists(objPlayer))
	exit;
if (reload > 0)
	reload -= 1;
else
{
	// If the player is farther than 120 units,
	if (point_distance(x, y, objPlayer.x, objPlayer.y) < 120
	
	// or back is to the player,
	&& scrCheckBack(point_direction(objPlayer.x, objPlayer.y, x, y), direction) == 1)
	{
		nothing = 0;
	}
	else
	{
		if (!scrCollisionLineExt(x, y, objPlayer.x, objPlayer.y, 3))
		{
			create_enemy(enemyRandom, sprEWalkUzi, 1, 30);
		}
	}
	reload = 5;
}

if (alert == 1)
	create_enemy(enemyRandom, sprEWalkUzi, 1, 30);

