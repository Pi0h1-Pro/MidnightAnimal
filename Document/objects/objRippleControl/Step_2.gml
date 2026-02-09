// Keep "cleaning the surface"
surface_set_target(buffer_surface);
draw_clear(c_black);
redrawn = false;
screen_redraw();
redrawn = true;
surface_reset_target();

