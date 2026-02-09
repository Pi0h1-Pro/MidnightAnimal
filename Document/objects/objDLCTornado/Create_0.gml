// light properties:
// L3S_define_light(z,shadows,soft_amount,soft_inc,static)
L3S_define_light(0, 0, 0, 0, 0, 0);

// light sprite properties:
image_xscale = 2;
image_yscale = 2;
image_angle = random(360);
image_blend = c_aqua;
image_alpha = 1;

// random stuff ,making it move around and such
twirl = 1 - (2 * floor(random(2)));
direction = image_angle;

