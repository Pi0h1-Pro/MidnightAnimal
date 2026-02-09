i = 0;
repeat (room_width / 4)
{
	oceandir[i] = i * 10;
	oceandiradd[i] = 2;
	oceanlength[i] = 2 + random(2) + random(1);
	oceanindex[i] = random(7);
	i += 1;
}
oceany = -16;
index = 0;
surf = surface_create(room_width, 200);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
surface_reset_target();

limit = 190 - random(30);
c_turquoise = make_color_rgb(0, 94, 160);

