/// @description  Draw the blood to the surface.
draw_self()
if surface_exists(surf) {
    draw_set_blend_mode(bm_add)
    draw_surface_ext(surf,x,y,1,1,0,c_white,0.8)
    draw_set_blend_mode(bm_normal)
}

