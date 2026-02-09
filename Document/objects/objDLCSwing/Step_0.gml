x = xx + lengthdir_x(lengthdir_x(swing, time), dir);
y = xx + lengthdir_y(lengthdir_x(swing, time), dir);
if (fps)
{
	time += 3 * 60 / fps;
	dir += 60 / fps;
}

