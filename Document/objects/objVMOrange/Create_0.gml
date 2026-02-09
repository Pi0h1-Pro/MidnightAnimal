/// @description @description Set light properties.
activated = 0;
image_angle = 0;
image_blend = merge_color(c_black, merge_colour(c_orange, c_yellow, 0.3), 0.5);
image_alpha = 0.5;

my_light = glr_light_create(sprLightSpotDigital, 0, x, y, image_blend, 0);
glr_light_set_scaling(my_light, 0.5, 0.5);
glr_light_set_static(my_light, true);
glr_light_refresh(my_light);
glr_light_set_rotation(my_light, image_angle);
activated = 1;

