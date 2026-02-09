/// @description  Swimming behaviour.
var dir, dist;

dist = point_distance(x, y, targetx, targety);

if (dist <= 100)
{
	targetx = irandom_range(0, room_width / 2);
	targety = irandom_range(0, room_height);
}

dir = point_direction(x, y, targetx, targety);

gravity = 0.3;
gravity_direction = dir;
image_angle = direction;

if (speed > 4)
	speed = 4;
image_speed = speed / 4;

