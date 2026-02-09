pos_x = objLFGlowOrange.x;
pos_y = objLFGlowOrange.y;
scale = 500;
center_x = 24; // view_xview[0] + 320
center_y = room_height - 24; // view_yview[0] + 240

x = center_x;
y = center_y;

image_angle = point_direction(x, y, pos_x, pos_y) + 90;

dist = distance_to_object(objLFGlowOrange);
image_yscale = dist / scale;
image_xscale = image_yscale;

