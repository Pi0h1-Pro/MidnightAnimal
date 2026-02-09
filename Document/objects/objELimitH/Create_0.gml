if (!instance_exists(objEnemy))
	exit;
if (ylimit < 0)
{
	if (objEnemy.y < y && !place_meeting(x, y, objEnemy))
		solid = 1;
	else
		solid = 0;
}
if (ylimit > 0)
{
	if (objEnemy.y > y && !place_meeting(x, y, objEnemy))
		solid = 1;
	else
		solid = 0;
}

if (global.done == 1)
	solid = 0;

