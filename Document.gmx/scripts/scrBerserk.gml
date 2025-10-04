if instance_exists(objPlayer) {
    prevkills = global.kills
    kills = global.kills
    if prevkills < kills killamount = 1
    if kills > 0 {
        if killamount < kills * 0.5 killamount = kills * 0.5
        if killamount > 1 killamount = 1
    }
    
    if kills > 0 and kills < 5 {
        if killamount > 0 {
            if killamount > kills * 0.5 killamount -= 0.005

            draw_set_blend_mode(bm_subtract)
            draw_circle_color(view_wview[0] / 2, view_hview[0] / 2, view_wview[0] * 0.75, c_black, merge_color(c_black, c_aqua, killamount), 0)
            draw_set_blend_mode(bm_add)
            myx = -random(32)
            myy = -random(32)
            draw_sprite_tiled_ext(sprNoise, 0, myx, myy, 1, 1, merge_color(c_black, c_white, killamount), 1)
            draw_set_blend_mode(bm_normal)
        }
    }
    
    if kills >= 5 {       
            objPlayer.berserk = 1
            draw_set_blend_mode(bm_subtract)
            draw_circle_color(view_wview[0] / 2, view_hview[0] / 2, 480 + random(24), merge_color(c_black, merge_color(c_teal, c_aqua, 0.6 + lengthdir_x(0.4, global.dir * 4)), bamount), merge_color(c_black, c_white, bamount), 0)
            draw_circle_color(view_wview[0] / 2, view_hview[0] / 2, 480 + random(24), merge_color(c_black, merge_color(c_teal, c_aqua, 0.6 + lengthdir_x(0.4, global.dir * 4)), bamount), merge_color(c_black, c_white, bamount), 0)
            draw_set_blend_mode(bm_normal)

            if bamount < 1 bamount += 0.05
    }    
}

