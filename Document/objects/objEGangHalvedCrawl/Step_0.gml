if (speed > 0 && friction > 0)
{
	if (speed <= 0.2)
	{
		friction = 0;
		speed = 0;
	}
	exit;
}
with (objDoorH)
	solid = 1;
with (objDoorV)
	solid = 1;
with (objShootThrough)
{
	test = solid;
	solid = 1;
}
with (objWindow)
{
	test = solid;
	solid = 1;
}
image_speed = 0.15;
speed = 0;
if (image_index > 0 && image_index < 3)
	speed = 0.5;
if (image_index > 5 && image_index < 9)
	speed = 0.5;
if (image_index > 12)
	speed = 0.5;
if (speed > 0)
{
	if (!place_free(x + lengthdir_x(16, direction), y + lengthdir_y(16, direction)))
		image_angle += 4;
	direction = image_angle;
}
with (objDoorH)
	solid = 0;
with (objDoorV)
	solid = 0;
with (objShootThrough)
	solid = test;
with (objWindow)
	solid = test;
if (!instance_exists(objPlayer))
	exit;

