if (global.done == 1)
	exit;
if (place_meeting(x + 4, y, objPlayerMouse))
{
	if (objPlayerMouse.y > y + 74 && objPlayerMouse.y < y + 82)
	{
		enter = 1;
		with (objPlayerMouse)
		{
			my_id = instance_create(objManhole.x + 95, objManhole.y + 78, objBikerClimbDown);
			my_id.image_angle = dir;
			instance_destroy();
		}
	}
}

