draw_set_blend_mode(bm_add)
//uncomment if you need faster rendering at a loss in quality
//draw_magnify(x-view_xview[0],y-view_yview[0],radius,sqrt(radius),texture,view_wview[0],view_hview[0],20,twist)
draw_magnify_ext(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),radius,sqrt(radius),texture,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),20,twist,c1,c2,c3,0,image_alpha*(1-power(radius/targetradius,4)),0)
draw_set_blend_mode(bm_normal)

