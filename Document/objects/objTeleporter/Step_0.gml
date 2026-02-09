if (!instance_exists(objPlayer))
	exit;

// Floor is not complete.
if (instance_exists(objEnemy) || instance_exists(objKnockedOut))
{
	active = 0;
	if (!place_meeting(x, y, objPlayer))
		solid = 1;
	visible = 0;
}
else
{
	// Floor is complete.
	active = 1;
	solid = 0;
	if (objPlayer.persistent == 1)
	{
		if (!place_meeting(x, y, objPlayer))
		{
			visible = 1;
			solid = 1;
		}
	}
	else
		visible = 1;
}

