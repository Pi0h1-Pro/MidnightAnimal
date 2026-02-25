/// @description  Draw things to the surface.
if !surface_exists(surf) {
    surf = surface_create(room_width * 2, room_height * 2)
    surface_set_target(surf)
    draw_clear_alpha(c_black, 0)
    surface_reset_target()
}

// Draw decals to surface.
surface_set_target(surf)

// Blood.
with objTinyBlood {
    draw_sprite_ext(sprite_index, image_index, x * 2 - 2 + random(4), y * 2 - 2 + random(4), image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha)
    instance_destroy()
}

with objSplat scrDrawBloodToSurface()
with objSmudge scrDrawBloodToSurface()
with objBigBlood scrDrawBloodToSurface()
with objSplatter draw_sprite_ext(sprSplatter, 0, x * 2 - 2 + random(4), y * 2 - 2 + random(4), image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha)

// Environmental damage.
with objEnvironmentalDebris {
    if speed = 0 {
        draw_sprite_ext(sprite_index, image_index, x * 2, y * 2, image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha) 
        instance_destroy()
    }
}

with objBreakableFragment {
if speed = 0 {
        draw_sprite_general(sprite_index,image_index,left,top,width,height,x * 2, y * 2, image_xscale * 2, image_yscale * 2,image_angle,-1,-1,-1,-1,1)
        instance_destroy()
    }
}
with objGib {
    if speed <= 0.1 {
        draw_sprite_ext(sprite_index, image_index, x * 2, y * 2, image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha) 
        instance_destroy()
    }
}
/*with objDeadBody {
        draw_sprite_ext(sprite_index, image_index, x * 2, y * 2, image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha)
        instance_destroy()
}*/

surface_reset_target()

/* */
/*  */
