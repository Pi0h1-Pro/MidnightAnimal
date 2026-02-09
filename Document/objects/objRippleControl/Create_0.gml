buffer_surface = surface_create(room_width * 1.5, room_height * 1.5); // Create a surface to fit the room.

surface_set_target(buffer_surface); // Set the target to the buffer-surface
draw_clear(c_black);
redrawn = false; // Whether the surface has been cleared
screen_redraw();
redrawn = true; // It's now been cleared
surface_reset_target();

