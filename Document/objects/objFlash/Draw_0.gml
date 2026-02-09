// Set Colour White
// Draw rectangle(quick flash)
// Draw alpha
// alph -=.09
draw_set_color(c_white);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(alph);
alph -= .09;

