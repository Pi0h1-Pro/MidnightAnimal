bar_surf = surface_create(view_wview, view_hview);
surface_set_target(bar_surf);
draw_clear_alpha(c_black, 0);
draw_set_color(c_black);    
    for(yy=0; yy<bar_endh; yy+=1)
    {
        draw_set_alpha(yy/bar_endh);
        draw_line(0, yy, view_wview, yy);
    }
    for(yy=bar_h-bar_endh; yy<bar_h; yy+=1)
    {
        draw_set_alpha((bar_h-yy)/bar_endh);
        draw_line(0, yy, view_wview, yy);
    }
    draw_set_alpha(1);
    for(yy=bar_endh; yy<bar_h-bar_endh; yy+=1)
        draw_line(0, yy, view_wview, yy);
