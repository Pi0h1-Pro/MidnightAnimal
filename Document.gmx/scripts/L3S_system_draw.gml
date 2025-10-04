//L3S_system_draw()

if global.LS_mod>1 {
    draw_set_blend_mode_ext(9,3)
    repeat(global.LS_mod-1){draw_surface_ext(global.LS_lightmap,view_xview,view_yview,1,1,0,c_white,1)}
    }
else{
    draw_set_blend_mode_ext(9,1)
    draw_surface(global.LS_lightmap,view_xview,view_yview)
    }
if global.LS_spec {
    draw_set_blend_mode(1)
    draw_surface(global.LS_light,view_xview,view_yview)
    } 
if global.LS_bloom {
    draw_set_blend_mode(1)
    repeat(floor(global.LS_bloom_intensity)) {draw_surface_ext(global.LS_bloom_map,view_xview,view_yview,1/global.LS_bloom_quality,1/global.LS_bloom_quality,0,c_white,1)}
    if frac(global.LS_bloom_intensity)!=0 {draw_surface_ext(global.LS_bloom_map,view_xview,view_yview,1/global.LS_bloom_quality,1/global.LS_bloom_quality,0,c_white,frac(global.LS_bloom_intensity))}
    }
draw_set_blend_mode(0)
