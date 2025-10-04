

if LS_soft {draw_set_alpha(LS_soft_quality/360)}
LS_i=-1;
for(i=0;i<ds_list_size(LS_sc_model);i+=1)
    {
    d3d_model_draw(ds_list_find_value(LS_sc_model,i),0,0,0,-1)
    repeat(ds_list_find_value(LS_sc_layer,i))
        {
        LS_i+=1        
        LS_id=ds_list_find_value(LS_sc_id,LS_i)
        if instance_exists(LS_id){
            LS_above=(LS_id).LS_z<LS_z
            with(LS_id){
                if (LS_bump_rng && other.LS_above){
                    var LS_zmod,LS_dx,LS_dy;
                    LS_zmod=(LS_bump_rng/(other.LS_z-LS_z-LS_bump_rng))
                    LS_dx=(x-other.x)*LS_zmod
                    LS_dy=(y-other.y)*LS_zmod
                    draw_sprite_ext(LS_mat_map,LS_bump_map1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
                    draw_set_blend_mode(1)
                    draw_sprite_ext(LS_mat_map,LS_bump_map2,x-sign(LS_dx)*min(abs(LS_dx),LS_bump_rng),y-sign(LS_dy)*min(abs(LS_dy),LS_bump_rng),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
                    draw_set_blend_mode(0)
                    }
                else{draw_sprite_ext(LS_mat_map,LS_bump_map1,x,y,image_xscale,image_yscale,image_angle,c_white*other.LS_above,image_alpha)}
                }
            }
        }
    }
var LS_i,LS_id,i,LS_above;
draw_set_alpha(1)
