
if fade {
	fadeAlpha+=0.01;
	draw_set_colour(c_black);
	draw_set_alpha(fadeAlpha);
	draw_rectangle(-10,-10,1000,1000,false);
	draw_set_alpha(1);
}

if (fadeAlpha > 1) {
	room_goto(rmGamePlay);
}