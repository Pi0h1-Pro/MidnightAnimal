if (!instance_exists(objPlayer))
	exit;
if (reload > 0)
	reload -= 1;
else
{
	if (point_distance(x, y, objPlayer.x, objPlayer.y) < 220)
	{
		if (!scrCollisionLineExt(x, y, objPlayer.x, objPlayer.y, 3))
		{
			if (room == rmTrainstationEntrance)
				my_id = instance_create(x, y, objEnemyMeleeStationary);
			else
				my_id = instance_create(x, y, choose(objEnemy, objEnemyMelee));
			my_id.direction = direction;
			
			// my_id.sprite_index=sprEWalkSilencer
			my_id.alert = 1;
			my_id.checkreload = 15;
			if (global.enemy == id)
				global.enemy = my_id;
			instance_destroy();
		}
	}
	reload = 15;
}

