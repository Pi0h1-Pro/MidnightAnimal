height = 100 * (1 + global.particles) * 0.5;
image_alpha = 0;
image_angle = random(360);

// if collision_point(x, y, objNoRain, 0, 0) instance_destroy()

dist = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x, y);
dir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x, y);
h1 = height * (dist * 0.005);
h2 = height * 0.01;

