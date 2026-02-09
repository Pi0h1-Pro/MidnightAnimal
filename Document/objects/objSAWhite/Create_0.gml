activated = 0;

// light sprite properties:
image_xscale = 2.5;
image_yscale = 2.5;
image_angle = 0;
image_blend = merge_color(merge_color(c_aqua, c_white, 0.9), c_silver, 0.3);
image_alpha = 0.3;

my_light = glr_light_create(sprLightHuge, 0, x, y, image_blend, 0);
glr_light_set_scaling(my_light, 0.8, 0.8);
glr_light_set_static(my_light, true);
activated = 1;

