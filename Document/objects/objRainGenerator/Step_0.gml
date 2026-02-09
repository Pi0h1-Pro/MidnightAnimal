exit;
edge = 200;

repeat (15)
{
	instance_create(__view_get( e__VW.XView, 0 ) - edge + random(__view_get( e__VW.WView, 0 ) + edge * 2),
		__view_get( e__VW.YView, 0 ) - edge + random(__view_get( e__VW.HView, 0 ) + edge * 2), objRain);
}

