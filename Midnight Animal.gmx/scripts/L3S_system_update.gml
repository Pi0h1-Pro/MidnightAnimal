//L3S_system_update()

    
// feel free to delete  //
global.light_renders=0  //
// feel free to delete  //

LS_dvx=view_xview+view_wview
LS_dvy=view_yview+view_hview

//rendering lightmap
draw_set_color(0)
draw_set_alpha(1)
d3d_transform_set_translation(-view_xview,-view_yview,1)
surface_set_target(global.LS_lightmap);
draw_clear(global.LS_ambient);
with(global.LS_MST_light){
    if self.bbox_right>view_xview if self.bbox_left<other.LS_dvx
    if self.bbox_top<other.LS_dvy if self.bbox_bottom>view_yview{
        if LS_shadow_cast{
            surface_set_target(global.LS_light)
            draw_clear(0)
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            surface_set_target(global.LS_shadow)
            draw_clear(8355711)
            switch(LS_static) {
                case 0: {
                    if LS_soft {L3S_shadow_update_soft(global.LS_MST_shadow)}
                    else {L3S_shadow_update(global.LS_MST_shadow)}
                    break;
                    }
                case 1: {
                    L3S_mesh_render()
                    switch(LS_sc_dsoft){
                        case 1:{L3S_shadow_update(global.LS_MST_dshadow);break}
                        case 2:{
                            if LS_soft {L3S_shadow_update_soft(global.LS_MST_dshadow)}
                            else {L3S_shadow_update(global.LS_MST_dshadow)}
                            break;
                            }
                        default:{break}
                        }
                    break;
                    }
                case 2: {
                    draw_surface(LS_sc_surface,bbox_left,bbox_top)
                    switch(LS_sc_dsoft){
                        case 1:{L3S_shadow_update(global.LS_MST_dshadow);break;}
                        case 2:{
                            if LS_soft {L3S_shadow_update_soft(global.LS_MST_dshadow)}
                            else {L3S_shadow_update(global.LS_MST_dshadow)}
                            break;
                            }
                        default:{break}
                        }
                    break;
                    }
                case 3: {
                    if surface_exists(LS_sc_surface){
                        draw_surface(LS_sc_surface,bbox_left,bbox_top)
                        switch(LS_sc_dsoft){
                            case 1:{L3S_shadow_update(global.LS_MST_dshadow);break;}
                            case 2:{
                                if LS_soft {L3S_shadow_update_soft(global.LS_MST_dshadow)}
                                else {L3S_shadow_update(global.LS_MST_dshadow)}
                                break;
                                }
                            default:{break}
                            }
                        }
                    else {
                        switch(LS_sc_dsoft){
                            case 1:{L3S_shadow_update(global.LS_MST_shadow);break}
                            case 2:{
                                if LS_soft {L3S_shadow_update_soft(global.LS_MST_shadow)}
                                else {L3S_shadow_update(global.LS_MST_shadow)}
                                break
                                }
                            default:{break}
                            }
                        }
                    break;
                    }
                default: {break}
                }
            draw_set_blend_mode_ext(9,3)
            draw_surface(global.LS_light,view_xview,view_yview)
            draw_set_blend_mode_ext(2,4)
            surface_set_target(global.LS_lightmap)
            draw_surface(global.LS_shadow,view_xview,view_yview)
            draw_set_blend_mode(0)
            global.light_renders+=1
            }
        else{
            global.light_renders+=1       
            surface_set_target(global.LS_lightmap)
            draw_set_blend_mode(1)
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            draw_set_blend_mode(0)
            }
        }
    }

//applying specular highlights
if global.LS_spec {
    surface_set_target(global.LS_shadow)
    draw_clear(0)
    with(global.LS_MST_specobject){
        if LS_spec_map>=0 {draw_sprite_ext(LS_mat_map,LS_spec_map,x,y,image_xscale,image_yscale,image_angle,c_white,1)}
        }
    with(global.LS_MST_shadow){
        if LS_spec_map>=0 {draw_sprite_ext(LS_mat_map,LS_spec_map,x,y,image_xscale,image_yscale,image_angle,c_white,1)}
        else{draw_sprite_ext(LS_mat_map,LS_spec_map,x,y,image_xscale,image_yscale,image_angle,c_black,1)}
        }   
    surface_set_target(global.LS_light)
    draw_surface(global.LS_lightmap,view_xview,view_yview)
    draw_set_blend_mode(1)
    with(global.LS_MST_speclight){
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        }
    draw_set_blend_mode_ext(9,1)
    draw_surface(global.LS_shadow,view_xview,view_yview)
    draw_set_blend_mode(0)
    surface_set_target(global.LS_shadow)
    draw_clear(0)
    with(global.LS_MST_specobject){
        if LS_glow_map>=0 {draw_sprite_ext(LS_mat_map,LS_glow_map,x,y,image_xscale,image_yscale,image_angle,c_white,1)}
        }
    with(global.LS_MST_shadow){
        if LS_glow_map>=0 {draw_sprite_ext(LS_mat_map,LS_glow_map,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)}
        else {draw_sprite_ext(LS_mat_map,0,x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha)}
        }
    surface_reset_target()
    d3d_transform_set_identity()
    if global.LS_glow {
        surface_set_target(global.LS_glow_map)
        draw_surface_ext(global.LS_shadow,0,0,global.LS_glow_quality,global.LS_glow_quality,0,c_white,1)
        switch(global.LS_glow_type){
            case 1:{L3S_post_blur_1(global.LS_glow_map,global.LS_glow_amount);break}
            case 2:{L3S_post_blur_2(global.LS_glow_map,global.LS_glow_mipmap,global.LS_glow_amount,0);break}
            default:{break}
            }
        } 
    draw_set_blend_mode_ext(2,2)
    surface_set_target(global.LS_light)
    if global.LS_glow {draw_surface_ext(global.LS_glow_map,0,0,1/global.LS_glow_quality,1/global.LS_glow_quality,0,c_white,1)}
    else{draw_surface(global.LS_shadow,0,0)}
    draw_set_blend_mode(0)
    }
d3d_transform_set_identity()

//applying light bloom
if global.LS_bloom{
    surface_set_target(global.LS_bloom_map)
    draw_clear(8355711)
    draw_set_blend_mode_ext(9,1)
    draw_surface_ext(global.LS_lightmap,0,0,global.LS_bloom_quality,global.LS_bloom_quality,0,c_white,1)
    draw_set_blend_mode_ext(2,2)
    draw_set_color(global.LS_bloom_threshold)
    draw_rectangle(0,0,global.LS_bloom_width,global.LS_bloom_height,0)
    draw_set_color(0)
    draw_set_blend_mode_ext(9,3)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_set_blend_mode_ext(9,1)
    draw_surface(global.LS_bloom_map,0,0)
    draw_surface(global.LS_bloom_map,0,0)
    draw_set_blend_mode_ext(2,2)
    draw_rectangle(0,0,global.LS_bloom_width,global.LS_bloom_height,0)
    draw_set_blend_mode(0)
    surface_reset_target()
    switch(global.LS_bloom_type){
        case 1:{L3S_post_blur_1(global.LS_bloom_map,global.LS_bloom_amount);break}
        case 2:{L3S_post_blur_2(global.LS_bloom_map,global.LS_bloom_mipmap,global.LS_bloom_amount,1);break}
        default:{break}
        }  
    draw_set_blend_mode_ext(2,2)
    surface_set_target(global.LS_bloom_map)
    draw_rectangle(0,0,global.LS_bloom_width,global.LS_bloom_height,0)
    draw_set_blend_mode(0)
    }
//resetting
draw_set_blend_mode(0)
surface_reset_target()
var LS_dvx,LS_dvy;
