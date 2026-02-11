activated = 0;

// light sprite properties:
image_xscale = 2 + random(0.05);
image_yscale = 2 + random(0.05);
image_angle = 0;
image_blend = merge_color(c_green, c_lime, 0.3);
image_alpha = 0.3;

my_light = //glr_light_create(sprLightHuge, 0, x, y, image_blend, 0);
//glr_light_set_scaling(my_light, 0.75, 0.75);
//glr_light_set_static(my_light, true);
//glr_light_refresh(my_light);
activated = 1;

