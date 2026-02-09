image_alpha -= .1 * global.timeMultiplier;

if (image_alpha <= 0)
	instance_destroy();

