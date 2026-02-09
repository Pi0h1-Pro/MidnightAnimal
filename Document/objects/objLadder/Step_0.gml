if (global.done == 1)
{
	if (place_meeting(x - 8, y, objPlayerBiker))
	{
		with (objPlayerBiker)
			instance_destroy();
		instance_create(x, y, objBikerClimbUp);
	}
	if (place_meeting(x - 8, y, objPlayerMouse))
	{
		with (objPlayerMouse)
			instance_destroy();
		instance_create(x, y, objPlayerClimbUp);
	}
}

