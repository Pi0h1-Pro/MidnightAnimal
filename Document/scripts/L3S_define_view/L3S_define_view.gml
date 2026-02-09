function L3S_define_view(argument0, argument1, argument2, argument3, argument4, argument5) {
	// L2S_define_view() adapted from a source i cant remember, if you are that source PM me.

	// argument0=x
	// argument1=y
	// argument2=horizontal border
	// argument3=vertical border
	// argument4=max x speed
	// argument5=max y speed

	var addx, addy;
	addx = argument4 * -((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5) - argument0) / (__view_get( e__VW.WView, 0 ) * 0.5 - argument2);
	addy = argument5 * -((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5) - argument1) / (__view_get( e__VW.HView, 0 ) * 0.5 - argument3);
	if (abs(addx) > argument4)
	{
		addx = addx / abs(addx) * argument4;
	}
	if (abs(addy) > argument5)
	{
		addy = addy / abs(addy) * argument5;
	}
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (addx) );
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (addy) );
	__view_set( e__VW.XView, 0, min(room_width - __view_get( e__VW.WView, 0 ), max(0, __view_get( e__VW.XView, 0 ))) );
	__view_set( e__VW.YView, 0, min(room_height - __view_get( e__VW.HView, 0 ), max(0, __view_get( e__VW.YView, 0 ))) );



}
