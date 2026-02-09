function L3S_get_lum(argument0, argument1) {
	// L3S_get_lum(x,y)

	// argument0:x position in room
	// argument1:y position in room

	return color_get_value(surface_getpixel(global.LS_lightmap, argument0 - __view_get( e__VW.XView, 0 ), argument1 - __view_get( e__VW.YView, 0 )));



}
