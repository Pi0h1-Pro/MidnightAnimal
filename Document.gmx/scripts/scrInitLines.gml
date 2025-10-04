//create scan lines surface
lines_surf = surface_create(view_wview, view_hview);
surface_set_target(lines_surf);
draw_clear_alpha(c_white, 0);
    
    for(yy=0; yy<view_hview; yy+=2)
        draw_line(0, yy, view_wview, yy);
