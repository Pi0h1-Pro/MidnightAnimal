function scrLevelClear() {
	if (room == rmGallery || room == rmArena)
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
}
