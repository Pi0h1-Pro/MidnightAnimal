/// @description  Draw background.
draw_sprite_ext(menuMain, 0, 0, 0, 1, 1, 0, c_white, 1);

switch (select)
{
	case 0:
		draw_sprite_ext(menuMain, 2, 0, 0, 1, 1, 0, c_white, 1);
		break;
	case 1:
		draw_sprite_ext(menuMain, 3, 0, 0, 1, 1, 0, c_white, 1);
		break;
}

