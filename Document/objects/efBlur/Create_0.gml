global.motionblur = false;

type = 0;
surf_mask = -1;

xprev = camera_get_view_x(view_camera[0]);
yprev = camera_get_view_y(view_camera[0]);

dir = degtorad(point_direction(xprev,yprev,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])));
dist = point_distance(xprev,yprev,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));