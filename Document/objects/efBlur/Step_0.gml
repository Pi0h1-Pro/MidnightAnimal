if global.motionblur == false exit;

//dir and distance for "directional blur"--------------------------------------
/*
This method to calculate direction and distance is functional,
but it is not the best way, is just an example to test motion blur
*/
dir = degtorad(point_direction(xprev,yprev,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])));
dist = point_distance(xprev,yprev,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));

xprev = camera_get_view_x(view_camera[0]);
yprev = camera_get_view_y(view_camera[0]);

//Mouse position when view move------------------------------------------------------
_x = mouse_x - camera_get_view_x(view_camera[0]);
_y = mouse_y - camera_get_view_y(view_camera[0]);

//Effect selection-------------------------------------------------------------------
/*switch (keyboard_key){
    case ord('1'): type = 0 break;
    case ord('2'): type = 1 break;
    case ord('3'): type = 2 break;
    case ord('4'): type = 3 break;
    case ord('5'): type = 4 break;
    case ord('6'): type = 5 break; 
    case ord('7'): type = 6 break;
    case ord('8'): type = 7 break;
}*/

//Mask for blur----------------------------------------------------------------------
if type = 4 {
    if(!surface_exists(surf_mask)) surf_mask = surface_create(1024,768)

    surface_set_target(surf_mask)
    draw_clear(c_black)
    draw_sprite(sprPWalkUnarmed,-1,_x,_y)
    surface_reset_target()
}