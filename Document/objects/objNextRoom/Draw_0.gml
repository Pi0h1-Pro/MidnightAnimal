// if instance_number(objEnemy)+instance_number(objKnockedOut)=0
if (active)
{
	myx = x;
	myy = y;
	if (myx > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 32 && index == 0)
		myx = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 32;
	if (myy > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32 && index == 3)
		myy = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32;
	if (myx < __view_get( e__VW.XView, 0 ) + 32 && index == 2)
		myx = __view_get( e__VW.XView, 0 ) + 32;
	if (myy < __view_get( e__VW.YView, 0 ) + 32 && index == 1)
		myy = __view_get( e__VW.YView, 0 ) + 32;
	if (index == 0 || index == 2)
		draw_sprite(sprArrow, index, myx + lengthdir_x(2, dir), y);
	if (index == 1 || index == 3)
		draw_sprite(sprArrow, index, x, myy + lengthdir_x(2, dir));
	dir += 8;
}

