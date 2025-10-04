shine_surf = surface_create(view_wview+shine_endh, shine_h+shine_endh*2);
surface_set_target(shine_surf);
draw_clear(c_black);
draw_set_color(c_white);
    //draws ellipse pixel by pixel
    for(xx=shine_endh; xx<view_wview-shine_endh; xx+=1)
    {
        yy = shine_h*sqrt(1-sqr((xx-view_wview/2)/(view_wview/2-shine_endh)));
        draw_line(xx, 0, xx, yy);  
    }  
    //draws gradient
    draw_set_blend_mode_ext(bm_dest_color, bm_zero);
    for(yy=0; yy<shine_h; yy+=1)
    {
        draw_set_color(make_color_hsv(0,0,(1-yy/shine_h)*255));
        draw_line(0, yy, view_wview, yy);  
    }
    draw_set_blend_mode(bm_normal);
        
//draws black margins
draw_set_color(c_black);
draw_rectangle(0, 0, view_wview, shine_endh, false);
//blurs the shine surface
//scrSurfaceBlur(shine_surf, 3);
