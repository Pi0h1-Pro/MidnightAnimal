/// @description  fd_rectangle_create_view(sf width, sf height, shader language, view number, edge buffer size)
/// @param sf width
/// @param  sf height
/// @param  shader language
/// @param  view number
/// @param  edge buffer size
function fd_rectangle_create_view(argument0, argument1, argument2, argument3, argument4) {
	// Creates a fluid dynamics rectangle attached to a view and returns its instance id. This instance id should be stored and be used together with the other scripts of this asset.
	// sf width, sf height: The width and height of the fluid dynamics rectangle. This does not need to be the same as the amount of pixels it will cover. It's usually a good idea to make
	//     it about a third the size of what it will actually cover on screen.
	// shader language: Enum type. Set this to either FD_SHADER_LANGUAGE.HLSL_9 or FD_SHADER_LANGUAGE.GLSL_ES depending on what shader language you want the shaders used to be from.
	// view number: The view to attach the fluid dynamics rectangle to.
	// edge buffer size: The number of pixels of padding to add around the view for the fluid dynamics rectangle.

	with (fd_rectangle_create(argument0 + (2 * argument4), argument1 + (2 * argument4), argument2)) {
	    fd_edge_buffer_size = argument4;
	    fd_view_number = argument3;
	    fd_wratio = __view_get( e__VW.WView, fd_view_number ) / argument0;
	    fd_hratio = __view_get( e__VW.HView, fd_view_number ) / argument1;
	    view_xview_previous = __view_get( e__VW.XView, fd_view_number );
	    view_yview_previous = __view_get( e__VW.YView, fd_view_number );
	    return id;
	}








}
