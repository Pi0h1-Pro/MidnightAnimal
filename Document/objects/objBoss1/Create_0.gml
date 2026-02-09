image_speed = 0;
invuln = 100;
image_index = random(1000);
if (global.maskindex == 2)
	energie = 5;
else
	energie = 3;
scrInitPathFinding();
path = path_add();
path_set_kind(path, 1);
path_set_precision(path, 2);
state = 0;
wait = 30;
hit = 0;

