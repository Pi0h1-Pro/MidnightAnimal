/// @description  Push away from other enemies.
dir = point_direction(other.x, other.y, x, y);
if (scrPlaceFree(x + lengthdir_x(2, dir), y + lengthdir_y(2, dir)))
{
	x += lengthdir_x(4, dir);
	y += lengthdir_y(4, dir);
}

