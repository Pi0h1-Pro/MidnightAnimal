/// @description  Add motion.
move_wrap(true, true, 100);
image_angle += angle_direction;

image_xscale = scale + cos(get_timer() / move) * 0.05;
image_yscale = image_xscale;

