// This is kinda irrelevant it just makes the stars disappear when outside the border
if ((__view_get( e__VW.XView, 0 ) + xstart - movex < 50) || (__view_get( e__VW.YView, 0 ) + ystart - movey < 50) || (__view_get( e__VW.XView, 0 ) + xstart - movex > 1250) || (__view_get( e__VW.YView, 0 ) + ystart - movey > 950))
{
	visible = false;
}
else
{
	// Here we draw the star by adding the position of the view with the xstart coordinate and then taking away the movex or movey
	draw_sprite_ext(sprStar, 0, __view_get( e__VW.XView, 0 ) + xstart - movex, __view_get( e__VW.YView, 0 ) + ystart - movey, 1, 1, 0, c_white, alpha);
}

draw_sprite_ext(sprite_index, -1, x - (z * (-(x - (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2)) / 500)), y - (z * (-(y - (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2)) / 500)), scale, scale, 0, c_white, image_alpha);

