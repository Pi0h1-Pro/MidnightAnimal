// for (i=0;i<beams;i+=1) {
/* there are three sets of x,y coordinates in play here.
    x,y of the points on the path, which is set up in the alarm event using the same coordinate system as objects
    x,y of the view
    x,y of the pixels inside your game window
    
    all x,y coordinates in the draw_gui event refer to actual pixels in the game window.
    therefore, the location of the path drawing has to be offset by the position of the view in the room.
    */
/*    draw_magnify_path_simple(-view_xview,-view_yview,path[i],seglength,width*(2-i/beams),texture,view_wview,view_hview,weighting/4,c1,c_white,1-.8*abs(weighting),weighting)
}

/* */
/*  */
