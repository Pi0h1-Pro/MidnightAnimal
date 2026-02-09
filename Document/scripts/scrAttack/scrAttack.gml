/// @description  scrAttack(x, y, 10, precision)
/// @param x
/// @param  y
/// @param  10
/// @param  precision
function scrAttack(argument0, argument1, argument2, argument3) {
	argument2 = 10;
	if (point_distance(x, y, argument0, argument1) > 12)
	{
		motion_add(point_direction(x, y, argument0, argument1), 0.5);
		if (speed > 4)
			speed = 4;
	}
	else
	{
		if (speed > 0)
			speed -= 0.25;
		direction = scrRotate(direction, point_direction(x, y, argument0, argument1), 16);
	}

	checkreload = 0;
	scrChargeSearch(argument0, argument1, argument3);



}
