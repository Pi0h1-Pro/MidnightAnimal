if (room == rmGallery || room == rmArena || room == rmTest)
	exit;
if (scrMovingPlayerExists())
{
	if (scrThreatNeutralised())
	{
		if (global.done == 0)
		{
			instance_create(x, y, objLevelComplete);
			global.done = 1;
		}
	}
}
