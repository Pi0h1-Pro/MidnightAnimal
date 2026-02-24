if keyboard_check_pressed(vk_escape)
{
	//isPaused = !isPaused;
}


if isHighlighting
{
	if mouse_check_button_released(mb_left)
	{
		switch (highlight_option) {
			case 0	: room_goto(roomNewGame);	isPaused=false;		break;
		    case 1	: game_restart();								break;
			case 2	: isPaused=false;								break;
			case 3	:												break;
			case 4	: createMenu(root_Options)						break;
			case 5	: game_end();									break;
		    default	:												break;
		}
	}
}