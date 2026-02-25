function scrDrawFlash() {
	//Draw flash.
	if whitealpha > 0 {
	    draw_set_blend_mode(bm_add)
	    draw_set_color(merge_color(c_black, c_white, whitealpha))
	    draw_rectangle(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, 0)
	    draw_set_blend_mode(bm_normal)
	    whitealpha -= 0.1
	}

	if blackalpha > 0 {
	    draw_set_blend_mode(bm_subtract)
	    draw_set_color(merge_color(c_white, c_black, blackalpha))
	    draw_rectangle(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, 0)
	    draw_set_blend_mode(bm_normal)
	    blackalpha -= 0.1
	}

	if flashalpha > 0 {
	    draw_set_blend_mode(bm_add)
	    draw_set_color(merge_color(c_black, c_white, flashalpha))
	    draw_rectangle(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, 0)
	    draw_set_blend_mode(bm_normal)
	    flashalpha -= 0.0025
	} 

	draw_reset()



}
