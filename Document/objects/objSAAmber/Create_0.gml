activated = 0;
image_blend = merge_color(merge_color(c_yellow, c_white, 0.6), c_black, 0.3);
image_alpha = 0.5;
refresh = 0;

my_light = glr_light_create(sprLightHuge, 0, x, y, image_blend, 0);
glr_light_set_scaling(my_light, 0.5, 0.5);
glr_light_set_static(my_light, true);
glr_light_refresh(my_light);
activated = 1;

