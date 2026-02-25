/// @description Draw object, and effects.

// If not yet destroyed, draw self...
if alpha = 0 draw_self() else if alpha > 0 {

    // ...otherwise, begin drawing destruction effects.
    
    // Set variables for shaking the object.
    var xs, ys;
    xs = x + irandom_range(-shake,shake)
    ys = y + irandom_range(-shake,shake)
    
    // Draw object shaking.
    draw_sprite_ext(sprite_index,image_index,xs,ys,image_xscale,image_yscale,image_angle,-1,1)
    
    // If flash is enabled, draw the object flashing as well. 
    // The colour of the flash can be adjusted in the Create event.
    if flash {
        //d3d_set_fog(true, c_white, 0, 0)
        //draw_sprite_ext(sprite_index, image_index, xs,ys, image_xscale, left, angle, image_blend, alpha)
        //d3d_set_fog(false, c_white, 0, 0)
        draw_sprite_ext(sprite_index,image_index,xs,ys,image_xscale,image_yscale,image_angle,color,alpha)
    }
    // Depreciate effect life.
    alpha -= 0.05
}

