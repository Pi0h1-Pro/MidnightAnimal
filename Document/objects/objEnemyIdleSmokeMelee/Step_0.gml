if (!instance_exists(objPlayer))
	exit;

if (wait > 0)
	wait -= 1;
else
{
	seen = scrLook(objPlayer.x, objPlayer.y, 4);
	if (seen == 0 || seen == 2)
		create_enemy(enemyRandom, sprEWalkUzi, 1, 30);
	wait = 15;
}

