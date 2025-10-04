//create noise surface (takes a bit of time)
noise_surf = surface_create(view_wview, view_hview);
surface_set_target(noise_surf);
draw_clear_alpha(c_white, 0);
    
    for(yy=0; yy<view_hview; yy+=1)
        for(xx=0; xx<view_wview; xx+=1)
            if(choose(0, 0, 0, 1))
                draw_point(xx,yy);
