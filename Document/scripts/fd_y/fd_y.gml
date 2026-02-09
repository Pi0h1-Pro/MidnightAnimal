/// @description  fd_y(instance id, y)
/// @param instance id
/// @param  y
function fd_y(argument0, argument1) {
	// Returns the y coordinate on the fluid dynamics surface.

	return ((argument1 - __view_get( e__VW.YView, argument0.fd_view_number )) / fd_rectangle.fd_hratio) + argument0.fd_edge_buffer_size;



}
