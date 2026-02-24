// Uncomment this if you wanna debug application_surface and why it's fucking around.
 
/*var scale = 0.05;
draw_surface_ext(application_surface, 
    0, 0,        
    scale, scale,
    0,           
    c_white, 1);
draw_set_font(fntScoreHud)
draw_text(50, 50, string("{0}, {1}", application_surface_is_enabled(), application_surface_is_draw_enabled()))*/

if (live_call()) return live_result;
draw_set_circle_precision(64)
exit;
text_reset();
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

draw_text_color(room_width/2+1,room_height/2+1+lengthdir_y(5,dir),msg,c_black,c_black,c_black,c_black,.5);
draw_text(room_width/2,room_height/2+lengthdir_y(5,dir),msg);
dir+=256*delta;

fade_alpha = decrease(fade_alpha,0,.75);
draw_set_alpha(fade_alpha)
draw_rectangle_color(-64,-64,room_width+64,room_height+64,c_white,c_white,c_white,c_white,false);
draw_set_alpha(1);
text_reset();