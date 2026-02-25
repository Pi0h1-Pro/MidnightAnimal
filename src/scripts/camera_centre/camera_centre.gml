/// @description  Centres the camera on the object relative to the view.
function camera_centre(argument0, argument1) {
	__view_set( e__VW.XView, 0, argument0-__view_get( e__VW.WView, 0 )/2 )
	__view_set( e__VW.YView, 0, argument1-__view_get( e__VW.HView, 0 )/2 )




}
