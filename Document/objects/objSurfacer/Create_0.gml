/// @description  Create surfaces.
// Stores blood and debris.
surf = surface_create(room_width * 2, room_height * 2);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
surface_reset_target();

floorsurf = 0;

