if on = 1 and sprite_index = sprVendingMachine {
    if !scrMovingPlayerExists() exit
    if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 and can_vend = true {
        draw_sprite_ext(sprite_index,1,x + irandom_range(-shake, shake)+1,y + irandom_range(-shake, shake)+1,image_xscale,image_yscale,image_angle,c_black,0.5)
        draw_sprite_ext(sprite_index,1,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    } else {
        draw_sprite_ext(sprite_index,0,x + irandom_range(-shake, shake)+1,y + irandom_range(-shake, shake)+1,image_xscale,image_yscale,image_angle,c_black,0.5)
        draw_sprite_ext(sprite_index,0,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    }
    
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprite_index,c,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    draw_reset()
    
    draw_set_color(light)
    draw_lens_flare(x,y,20,2,2,1,choose(3,4,5),choose(0.5,0.6,0.7))
} else {

    if sprite_index = sprVendingMachineBreak {
        if image_index = 0 {
            draw_sprite_ext(sprVendingMachineBreak,image_index,x + irandom_range(-shake, shake)+1,y + irandom_range(-shake, shake)+1,image_xscale,image_yscale,image_angle,c_black,0.5)
            draw_sprite_ext(sprVendingMachineBreak,image_index,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        } else {
            draw_sprite_ext(sprVendingMachineBreak,image_index,x + irandom_range(-shake, shake)+1,y + irandom_range(-shake, shake)+1,image_xscale,image_yscale,image_angle,c_black,0.5)
            draw_sprite_ext(sprVendingMachineBreak,image_index,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            
            draw_set_blend_mode(bm_add)
            draw_sprite_ext(sprite_index,c,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            draw_reset()
            
            draw_set_color(light)
            draw_lens_flare(x,y,20,2,2,1,choose(3,4,5),choose(0.5,0.6,0.7))    
        }
    }
    
    if sprite_index = sprVendingMachineBroken {
        draw_sprite_ext(sprVendingMachineBroken,image_index,x + irandom_range(-shake, shake)+1,y + irandom_range(-shake, shake)+1,image_xscale,image_yscale,image_angle,c_black,0.5)
        draw_sprite_ext(sprVendingMachineBroken,image_index,x + irandom_range(-shake, shake),y + irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    }
}

