dir += 8;
if (active)
{
	myx = x;
	myy = y;
	if (myx > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 32 && image_angle == 0)
		myx = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 32;
	if (myy > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32 && image_angle == 180)
		myy = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32;
	if (myx < __view_get( e__VW.XView, 0 ) + 32 && image_angle == 90)
		myx = __view_get( e__VW.XView, 0 ) + 32;
	if (myy < __view_get( e__VW.YView, 0 ) + 32 && image_angle == 270)
		myy = __view_get( e__VW.YView, 0 ) + 32;
	if (image_angle == 90 || image_angle == 270)
		draw_sprite(sprite, index, myx + lengthdir_x(2, dir), y);
	if (image_angle == 180 || image_angle == 0)
		draw_sprite(sprite, index, x, myy + lengthdir_x(2, dir));
	dir += 8;
	index += 0.5;
}

