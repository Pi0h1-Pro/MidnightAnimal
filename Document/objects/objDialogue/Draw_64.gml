if (face[page] == sprFaceTutorialRichardOld) {
	scrDrawChatClassic();
} else {
	switch (room) {
	    case rmLevelWhiplash:
		case rmLevelWhiplashUpstairs:
	        scrDrawChatTutorial();
	        break;
	    default: scrDrawChat(); break;
	}
}

display_set_gui_size(480,270);

for (oi = 0; oi<360; oi+=(360/4)) {
    draw_circular_bar(480 - 16 + 2 + lengthdir_x(1,oi), 270 - 32 + lengthdir_y(1,oi),100-skipTimer,100,#171621,8,1,3);
}

draw_circular_bar(480 - 16 + 2, 270 - 32,100-skipTimer,100,#87859E,8,1,3);
display_set_gui_size(-1,-1);