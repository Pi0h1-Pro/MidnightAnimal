if (instance_exists(objEnemy) || instance_exists(objKnockedOut) || instance_exists(objBoss))
{
	active = 0;
	if (place_meeting(x, y, objPlayer))
		solid = 0;
	else
	{
		solid = 1;
		if (addx > 0 && objPlayer.x > x)
			solid = 0;
		if (addy > 0 && objPlayer.y > y)
			solid = 0;
		if (addx < 0 && objPlayer.x < x)
			solid = 0;
		if (addy < 0 && objPlayer.y < y)
			solid = 0;
	}
}
else
{
	solid = 0;
	if (!place_meeting(x, y, objPlayer))
		active = 1;
}

