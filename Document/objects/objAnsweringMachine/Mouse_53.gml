if (talked == 0)
{
	if (place_meeting(x + lengthdir_x(12, objPlayer.dir), y + lengthdir_y(12, objPlayer.dir), objPlayer))
	{
		if (objAnsweringMachine.active == 1)
		{
			talked = 1;
			scrGetMessage(phone);
			with (objPlayer)
			{
				active = 0;
				sprite_index = sprPTakePhone;
				image_index = 0;
				image_speed = 0;
				sound_play(sndPhone);
				dir = point_direction(x, y, objAnsweringMachine.x, objAnsweringMachine.y);
			}
		}
	}
}

