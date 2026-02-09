/// @description  Ripple.
image_xscale += spd;
image_yscale = image_xscale;

image_alpha -= 0.005;
if (image_alpha <= 0)
	instance_destroy();

