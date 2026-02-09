bgcolor = merge_color(merge_color(c_black, c_navy, 0.5 + lengthdir_x(0.5, cdir)), c_black, 0.5);
color = merge_color(c_navy, c_black, 0.75 + lengthdir_x(0.15, cdir));

// if room=rmTigersDen {bgcolor=c_black color=c_black}
draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 60, __view_get( e__VW.YView, 0 ) - 60, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 60, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 60, bgcolor, bgcolor, c_black, c_black, 0);
cdir += 1;

