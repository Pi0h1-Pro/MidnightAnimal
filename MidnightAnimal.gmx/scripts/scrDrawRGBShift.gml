//scrDrawRGBShift(xr, yr, xg, yg, xb, yb);
//
//  x* - horizontal shift distance
//  y* - vertical shift distance
//
//returns nothing


var _bg;//, surfred, surfgrn, surfblu;

//gets the screen onto a background
_bg = background_create_from_screen(0, 0, room_width * 2, room_height * 2, 0, 0);
    
    //draws the screen onto a surface that is cleared in a channel we need
    surface_set_target(surfred);
            draw_clear(c_black);
            draw_background(_bg, 0, 0);
            //scrSurfaceBlur(surfred, blur);
    surface_copy(surfgrn, 0, 0, surfred);
    surface_copy(surfblu, 0, 0, surfred);
    
    //erases the channels
    draw_set_blend_mode(bm_subtract);
    draw_set_alpha(0);
    surface_set_target(surfred);
        draw_set_color(make_color_rgb(0, 255, 255));
        draw_rectangle(0, 0, room_width * 2, room_height * 2, false);
    surface_set_target(surfgrn);
        draw_set_color(make_color_rgb(255, 0, 255));
        draw_rectangle(0, 0, room_width * 2, room_height * 2, false);
    surface_set_target(surfblu);
        draw_set_color(make_color_rgb(255, 255, 0));
        draw_rectangle(0, 0, room_width * 2, room_height * 2, false);
                
    //clear screen, then draw the surfaces to the screen using bm_add
    surface_reset_target();
        draw_clear(c_black);
        draw_set_blend_mode(bm_add);
        
    draw_surface(surfred, argument0, argument1);
    draw_surface(surfgrn, argument2, argument3);
    draw_surface(surfblu, argument4, argument5);
    
//sets everything back to normal, deletes the background
draw_set_blend_mode(bm_normal);
draw_set_color(c_black);
draw_set_alpha(1);
background_delete(_bg);

//by deluksic
