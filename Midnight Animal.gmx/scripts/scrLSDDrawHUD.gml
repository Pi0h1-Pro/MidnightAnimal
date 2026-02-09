whitealpha = 0

if room = rmTutorial or instance_exists(objMaskMenu) nothing = 1
else {

    if instance_exists(objPlayer) {
        scrGetAmmoDraw()
        if global.ammotype = 2 global.magammotype = 5
        else global.magammotype = 4
        if global.ammo > 0 ammostring = string(global.ammo)
        else ammostring = ""
        if string_length(ammostring) = 1 ammostring = '0' + string(global.ammo)
        if global.ammo < 0 ammostring = "NO GUN"
        if global.done = 1 ammostring = ""
        if global.drawscore < global.myscore {
            if global.drawscore + 50 < global.myscore global.drawscore += 50
            else global.drawscore = global.myscore
        }
        if global.combotime > 0 global.combotime -= 1
        else {
            if global.combotime = 0 {
                if global.combo > 1 {
                    //my_id=instance_create(objPlayer.x,objPlayer.y-24,objPoints)
                    //my_id.text = string(global.combo - 1) + "xCOMBO"
                    global.myscore += round(((global.combo - 1) * (global.combo * 0.25) * 1000) * (1 / 50)) * 50
                }
                global.combotime = -100
                global.combo = 0
            }
        }


        //combo window
        draw_set_blend_mode(bm_subtract)
        i = 0
        repeat(7) {
            draw_rectangle_color(0, 11 + i * 5, 120 + combox + lengthdir_x(8, dir + i * 45), 14 + i * 5, c_black, c_dkgray, c_black, c_dkgray, 0)
            i += 1
        }
   
        i = 0
        repeat(6) {
            //draw_rectangle_color(view_wview[0] - 120 + scorex, 11 + i * 5, view_wview[0], 14 + i * 5, c_black, c_dkgray, c_dkgray, c_black, 0)
            draw_rectangle_color(0, 217 + i * 5, 120 + ammox + lengthdir_x(8, dir + i * 45), 220 + i * 5, c_dkgray, c_black, c_black, c_dkgray, 0)
            i += 1
        }
        
        draw_set_blend_mode(bm_normal)

        draw_set_font(fntAmmo)
        draw_set_color(c_black)
        //draw_set_halign(fa_right)
        draw_set_valign(fa_top)
        //draw_text(view_wview[0] - 21 + scorex, 17, string(global.drawscore) + 'pts')
        //draw_text(view_wview[0] - 25 + scorex + lengthdir_x(0.5, dir - 180), 13 + lengthdir_x(0.5, dir - 180), string(global.drawscore) + 'pts')
        draw_set_halign(fa_left)
        draw_set_font(fntCombo)
        draw_text(23 + combox, -7, string(global.combo) + 'x')
        draw_text(26 + combox, -4, string(global.combo) + 'x')
        draw_set_font(fntAmmo)

        //Initiate draw of ammo symbols
        if scrMovingPlayerExists() and instance_exists(objPlayer) {
            global.magammo = objPlayer.mags //*32
        }

        if global.ammo + global.magammo > 0 and global.done = 0 draw_sprite_ext(sprAmmoSymbols, global.ammotype, 20 + ammox, 232, 1, 1, 0, c_white, 1)
        if global.magammo > 0 and global.done = 0 draw_sprite_ext(sprAmmoSymbols, global.magammotype, 80 + ammox, 232, 1, 1, 0, c_white, 1)
        magammostring = string(global.magammo)
        if string_length(magammostring) = 1 magammostring = '0' + string(global.magammo)

        //Draw ammo.
        if global.ammo > 0 and global.done = 0 draw_sprite_ext(sprAmmoSymbols, global.ammotype, 20 + ammox, 232, 1, 1, 0, c_white, 1)
        draw_text(31 + ammox + lengthdir_x(0.5, dir), 219 + lengthdir_x(0.5, dir), ammostring)
        draw_text(35 + ammox, 223, ammostring)
        
        //Back. 
        color1=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
        color2=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
        draw_text_color(34 + ammox, 222, ammostring, color1, color1, color2, color2, 1)
        
        //Front.
        color1=merge_color(merge_color(c_aqua,c_white,0.3+lengthdir_x(0.2,dir)),c_white,whitealpha)
        color2=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,whitealpha)
        draw_text_color(32 + ammox + lengthdir_x(0.5, dir), 220 + lengthdir_x(0.5, dir), ammostring, color1, color1, color2, color2, 1)
        
        //Outline.
        color1=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,random(whitealpha))
        color2=merge_color(merge_color(c_aqua,c_white,0.3+lengthdir_x(0.2,dir)),c_white,random(whitealpha))
        draw_set_font(fntAmmoOutline)
        draw_text_color(32 + ammox + lengthdir_x(0.5, dir), 220 + lengthdir_x(0.5, dir), ammostring, color1, color1, color2, color2, 1)
       
         //Draw magazine ammo.
        if global.magammo > 0 and global.done = 0 {
            draw_sprite_ext(sprAmmoSymbols, global.magammotype, 80 + ammox, 232, 1, 1, 0, c_white, 1)
            draw_text(91 + ammox + lengthdir_x(0.5, dir), 219 + lengthdir_x(0.5, dir), magammostring)
            draw_text(95 + ammox, 223, magammostring)
            
            //Back.
            color1=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
            color2=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
            draw_text_color(94 + ammox, 222, magammostring, color1, color1, color2, color2, 1)
            
            //Front.
            color1=merge_color(merge_color(c_aqua,c_white,0.3+lengthdir_x(0.2,dir)),c_white,whitealpha)
            color2=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,whitealpha)
            draw_text_color(92 + ammox + lengthdir_x(0.5, dir), 220 + lengthdir_x(0.5, dir), magammostring, color1, color1, color2, color2, 1)
            
            //Outline.
            color1=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,random(whitealpha))
            color2=merge_color(merge_color(c_aqua,c_white,0.3+lengthdir_x(0.2,dir)),c_white,random(whitealpha))
            draw_set_font(fntAmmoOutline)
            draw_text_color(92 + ammox + lengthdir_x(0.5, dir), 220 + lengthdir_x(0.5, dir), magammostring, color1, color1, color2, color2, 1)
        }

        //Draw combo.
        draw_set_font(fntCombo)
        
        //Back.
        color1=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
        color2=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
        draw_text_color(25 + combox, -5, string(global.combo) + 'x', color1, color1, color2, color2, 1)

        //Front.
        color1=merge_color(merge_color(c_aqua,c_white,0.3+lengthdir_x(0.2,dir)),c_white,whitealpha)
        color2=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,whitealpha)
        draw_text_color(24 + combox, -6, string(global.combo) + 'x', color1, color1, color2, color2, 1)

        //Outline.
            color1=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,random(whitealpha))
            color2=merge_color(merge_color(c_aqua,c_white,0.3+lengthdir_x(0.2,dir)),c_white,random(whitealpha))
            draw_set_font(fntComboOutline)
            draw_text_color(24 + combox, -6, string(global.combo) + 'x', color1, color1, color2, color2, 1)
        //Draw score.
        /*draw_set_font(fntAmmo)
        draw_set_halign(fa_right)
        draw_set_valign(fa_top)
        draw_text_color(view_wview[0] - 22 + scorex, 16, string(global.drawscore) + 'pts',
            merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.5, dir)),
            merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.5, dir)),
            merge_color(c_maroon, c_black, 0.5 + lengthdir_x(0.5, dir)),
            merge_color(c_maroon, c_black, 0.5 + lengthdir_x(0.5, dir)), 1)
        
        draw_text_color(view_wview[0] - 24 + scorex + lengthdir_x(0.5, dir - 180), 14 + lengthdir_x(0.5, dir - 180), string(global.drawscore) + 'pts',
            merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, dir + 90)),
            merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, dir + 90)),
            merge_color(c_silver, c_silver, 0.5 + lengthdir_x(0.5, dir + 90)),
            merge_color(c_silver, c_silver, 0.5 + lengthdir_x(0.5, dir + 90)), 1)
        */
        dir += 4
        if global.ammo > -1 or global.done = 1 {
            if ammox < 0 ammox += 8
        } else {
            if ammox > -160 ammox -= 8
        }
        if scorex > 0 scorex -= 8
        if global.combo > 1 {
            if combox < 0 combox += 8
        } else {
            if combox > -160 combox -= 8
        }
    }
}

