randomize();

alarm[0]=32;
alarm[1]=150;
x = room_width/2;
y = room_height/2;

isFullscreen = false;

image_angle = random(360);

image_xscale = .25;
image_yscale = .25;


if (variable_global_exists("skip")) {
	if (global.skip) {
		alarm[0] = 2;
		alarm[1] = 3;
	}
	image_alpha = 0;
}