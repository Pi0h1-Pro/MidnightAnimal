function scrInitLSD() {
	centerx = __view_get( e__VW.WView, 0 ) * 0.45;
	centery = __view_get( e__VW.HView, 0 ) * 0.45;
	n = 0;
	repeat (30)
	{
		myx[n] = centerx + lengthdir_x(360, n * 12);
		myy[n] = centery + lengthdir_y(360, n * 12);
		n += 1;
	}
	xfactor = 0;
	yfactor = 0;



}
