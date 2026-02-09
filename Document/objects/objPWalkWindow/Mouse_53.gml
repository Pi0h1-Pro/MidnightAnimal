with (objWindowV)
{
	if (sprite_index == sprWindowSill)
		nothing = 1;
	else
	{
		if (place_meeting(x - 16, y, objPlayer))
		{
			instance_create(x, y, objPlayerEnterWindow);
			instance_destroy();
		}
	}
}

