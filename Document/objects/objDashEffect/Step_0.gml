/// @description  Fade out.
if (image_alpha > 0)
	image_alpha -= 0.1;
else
	instance_destroy();

// effect_create_below(ef_smoke,x,y,0.2,c_black)

