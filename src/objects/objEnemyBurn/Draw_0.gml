if sprite_index = sprEBurnExtreme {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprEBurningLegs,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
    draw_reset()
} else {
    draw_sprite_ext(sprELegs,image_index*2,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
}

