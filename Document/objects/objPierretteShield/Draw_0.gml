draw_set_alpha(0.1);
draw_circle_colour(x, y, radius * 1.2, global.c_health, global.c_health, false);
draw_set_alpha(0.2);
draw_circle_colour(x, y, radius, global.c_health, global.c_health, false);
draw_set_alpha(0.4);
draw_circle_colour(x, y, radius * 0.8, global.c_health, global.c_health, false);
draw_set_alpha(0.6);
draw_circle_colour(x, y, radius * 0.6, global.c_health, global.c_health, false);
draw_set_alpha(0.8);
draw_circle_colour(x, y, radius * 0.4, global.c_health, global.c_health, false);

draw_reset();
draw_self();

