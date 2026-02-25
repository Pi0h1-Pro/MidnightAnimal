/// @description  Draw the raindrop.
draw_set_color(c_white)
draw_set_alpha(0.6)

// Creates raindrops based on perspetive.
var length, vectorx, vectory;
vectorx = (x - (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2)) / (__view_get( e__VW.WView, 0 ) / 2)
vectory = (y - (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2)) / (__view_get( e__VW.HView, 0 ) / 2)

// Length of the raindrop.
length = 1.5

// Draw the raindrop.
draw_line_width(x + vectorx * sqr(height), y + vectory * sqr(height), x + vectorx * sqr(height + length), y + vectory * sqr(height + length), 1)

// Reset the alpha.
draw_set_alpha(1)

