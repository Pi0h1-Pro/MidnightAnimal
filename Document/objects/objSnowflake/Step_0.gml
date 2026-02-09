dist = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x, y);
dir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x, y);
h1 = height * (dist * 0.005);
h2 = height * 0.01;
if (image_alpha < 0.8)
	image_alpha += 0.05;

// alpha(1-h2*2) for really subtle snow
// 1-h2 for less subtle
//( x+lengthdir_x(height*(dist*0.002),dir),y+lengthdir_y(height*(dist*0.002),dir),x+lengthdir_x((height+10)*(dist*0.002),dir),y+lengthdir_y((height+10)*(dist*0.002),dir),100,c_ltgray,c_white)

