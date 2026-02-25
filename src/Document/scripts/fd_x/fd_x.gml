/// @description  fd_x(instance id, x)
/// @param instance id
/// @param  x
function fd_x(argument0, argument1) {
	// Returns the x coordinate on the fluid dynamics surface.

	return ((argument1 - __view_get( e__VW.XView, argument0.fd_view_number )) / fd_rectangle.fd_wratio) + argument0.fd_edge_buffer_size;







}
