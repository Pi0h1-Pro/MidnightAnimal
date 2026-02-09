/// @description  Create firefly.
if (room == rmManour)
	exit;
if (random(100) > 90)
	instance_create(x + irandom_range(-24, 24), y + irandom_range(-24, -24), objFirefly);

