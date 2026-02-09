if (round(random(100)) == 2)
	instance_destroy();
if (life > 0)
	life -= 1;
else
	instance_destroy();
image_blend = make_color_hsv(random(255), random(255), random(255));
image_angle = angle + dir;
image_xscale += 0.05;
image_yscale += 0.05;

