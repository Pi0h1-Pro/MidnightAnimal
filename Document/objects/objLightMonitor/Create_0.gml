// light sprite properties:
image_xscale = 0.2;
image_yscale = image_xscale;
image_blend = merge_color(c_aqua, c_white, 0.6);
image_alpha = 0.5;
image_speed = 0.15;

activated = 0;
my_light = glr_light_create(sprLightHuge, 0, x, y, image_blend, 0);
glr_light_set_scaling(my_light, image_xscale, image_yscale);
glr_light_set_static(my_light, true);
glr_light_refresh(my_light);
activated = 1;

