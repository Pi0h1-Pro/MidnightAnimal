//L3S_shadow_update(shadow master)

//argument0: shadows to update

with(argument0){
    if bbox_right>other.bbox_left if bbox_left<other.bbox_right
    if bbox_top<other.bbox_bottom if bbox_bottom>other.bbox_top
        {ds_priority_add(global.LS_ds,self.id,self.LS_z)}
    }
LS_imax=ds_priority_size(global.LS_ds)
if LS_imax>0
{
LS_i1=0;i=0; 
repeat(LS_imax) {LS_shadow[i]=ds_priority_delete_min(global.LS_ds);i+=1}       
for(LS_i2=0;LS_i2<LS_imax;LS_i2+=1){
    with(LS_shadow[LS_i2]){
        switch(LS_type){
            case 0:{
                var LS_zmod,LS_Lx1,LS_Ly1,LS_Lx2,LS_Ly2;
                LS_zmod=LS_z/max(other.LS_z-self.LS_z,0.000001)
                LS_Lx1=bbox_left+(bbox_left-other.x)*LS_zmod
                LS_Ly1=bbox_bottom+(bbox_bottom-other.y)*LS_zmod
                LS_Lx2=bbox_right+(bbox_right-other.x)*LS_zmod
                LS_Ly2=bbox_top+(bbox_top-other.y)*LS_zmod
                draw_primitive_begin(pr_trianglestrip)
                    draw_vertex(bbox_left,bbox_bottom)
                    draw_vertex(LS_Lx1,LS_Ly1)
                    draw_vertex(bbox_left,bbox_top)
                    draw_vertex(LS_Lx1,LS_Ly2)
                    draw_vertex(bbox_right,bbox_top)
                    draw_vertex(LS_Lx2,LS_Ly2)
                    draw_vertex(bbox_right,bbox_bottom)
                    draw_vertex(LS_Lx2,LS_Ly1)
                    draw_vertex(bbox_left,bbox_bottom)
                    draw_vertex(LS_Lx1,LS_Ly1)
                draw_primitive_end()
                break;
                }
            case 1:{
                var i,LS_diff,LS_x1,LS_y1,LS_x2,LS_y2,LS_Lx1,LS_Lx2,LS_Ly1,LS_Ly2,LS_zmod;
                LS_zmod=LS_z/max(other.LS_z-self.LS_z,0.000001)
                LS_diff=LS_radius/max(point_distance(x,y,other.x,other.y),0.001)
                LS_xx=(x-other.x)*LS_diff;
                LS_yy=(y-other.y)*LS_diff;
                LS_x1=x-LS_yy;LS_y1=y+LS_xx;
                LS_x2=x+LS_yy;LS_y2=y-LS_xx;
                LS_Lx1=LS_x1+(LS_x1-other.x)*LS_zmod
                LS_Ly1=LS_y1+(LS_y1-other.y)*LS_zmod
                LS_Lx2=LS_x2+(LS_x2-other.x)*LS_zmod
                LS_Ly2=LS_y2+(LS_y2-other.y)*LS_zmod
                draw_primitive_begin(pr_trianglestrip)
                        draw_vertex(LS_x1,LS_y1)
                        draw_vertex(LS_Lx1,LS_Ly1)
                        draw_vertex(LS_x2,LS_y2)
                        draw_vertex(LS_Lx2,LS_Ly2)
                draw_primitive_end()
                draw_circle((LS_Lx1+LS_Lx2)>>1,(LS_Ly1+LS_Ly2)>>1,point_distance(LS_Lx1,LS_Ly1,LS_Lx2,LS_Ly2)>>1,0)
                break;
                }
            case 2:{
                var i,LS_x1,LS_y1,LS_zmod;
                draw_primitive_begin(pr_trianglestrip)
                for(i=0;i<ds_list_size(LS_shadow_poly);i+=3){
                    LS_x1=ds_list_find_value(LS_shadow_poly,i)
                    LS_y1=ds_list_find_value(LS_shadow_poly,i+1)
                    LS_zmod=ds_list_find_value(LS_shadow_poly,i+2)/max(other.LS_z-ds_list_find_value(LS_shadow_poly,i+2),0.000001)
                    draw_vertex(LS_x1,LS_y1)
                    draw_vertex(LS_x1+(LS_x1-other.x)*LS_zmod,LS_y1+(LS_y1-other.y)*LS_zmod)  
                    }
                draw_primitive_end()
                break
                }
            case 3:{     
                var i,LS_x1,LS_y1,LS_zmod;
                draw_primitive_begin(pr_trianglestrip)
                for(i=0;i<ds_list_size(LS_shadow_poly);i+=3){
                    LS_x1=x+lengthdir_x(ds_list_find_value(LS_shadow_poly,i),image_angle+ds_list_find_value(LS_shadow_poly,i+1))
                    LS_y1=y+lengthdir_y(ds_list_find_value(LS_shadow_poly,i),image_angle+ds_list_find_value(LS_shadow_poly,i+1))
                    LS_zmod=ds_list_find_value(LS_shadow_poly,i+2)/max(other.LS_z-ds_list_find_value(LS_shadow_poly,i+2),0.000001)
                    draw_vertex(LS_x1,LS_y1)
                    draw_vertex(LS_x1+(LS_x1-other.x)*LS_zmod,LS_y1+(LS_y1-other.y)*LS_zmod)  
                    }
                draw_primitive_end()
                break
                }
            default: {break;}
            }
        }  
    if (LS_shadow[LS_i2].LS_z)!=(LS_shadow[LS_i1].LS_z) ||(LS_i2=LS_imax-1){
        if LS_i2=LS_imax-1{
            LS_above=LS_shadow[LS_i2].LS_z<LS_z
            LS_i2+=1
            }
        else{LS_above=LS_shadow[LS_i1].LS_z<LS_z}
        for(i=LS_i1;i<LS_i2;i+=1){
            with(LS_shadow[i]){
                if (LS_bump_rng && other.LS_above){
                    var LS_zmod,LS_dx,LS_dy;
                    LS_zmod=(LS_bump_rng/(other.LS_z-LS_z-LS_bump_rng))
                    LS_dx=(x-other.x)*LS_zmod;
                    LS_dy=(y-other.y)*LS_zmod;
                    draw_sprite_ext(LS_mat_map,LS_bump_map1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
                    draw_set_blend_mode_ext(5,2)
                    draw_sprite_ext(LS_mat_map,LS_bump_map2,x-sign(LS_dx)*min(abs(LS_dx),LS_bump_rng),y-sign(LS_dy)*min(abs(LS_dy),LS_bump_rng),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
                    draw_set_blend_mode(0)
                    }
                else{draw_sprite_ext(LS_mat_map,LS_bump_map1,x,y,image_xscale,image_yscale,image_angle,c_white*other.LS_above,image_alpha)}
                }
            }
        
        LS_i1 = LS_i2;
        }
    }
var i,LS_i1,LS_i2,LS_imax,LS_above;
}
            
 
