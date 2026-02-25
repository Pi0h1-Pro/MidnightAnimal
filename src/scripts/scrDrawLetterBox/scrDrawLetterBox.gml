function scrDrawLetterBox() {
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),blackx,0)
	draw_rectangle(0,__view_get( e__VW.HView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )-blackx*1.5,0)

	if letterbox = true {
	    if blackx < 20 blackx += 2.5
	} else {
	    if blackx > 5 blackx -= 2.5
	}

	draw_reset()



}
