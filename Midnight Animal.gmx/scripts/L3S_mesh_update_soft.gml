//L3S_mesh_update()

ds_list_clear(LS_sc_id)
for(i=0;i<ds_list_size(LS_sc_model);i+=1){
    d3d_model_destroy(ds_list_find_value(LS_sc_model,i))
    }
ds_list_clear(LS_sc_model)
ds_list_clear(LS_sc_layer)

with(global.LS_MST_sshadow){
    if bbox_right>other.bbox_left if bbox_left<other.bbox_right
    if bbox_top<other.bbox_bottom if bbox_bottom>other.bbox_top
        {ds_priority_add(global.LS_ds,self.id,self.LS_z)}
    }
LS_imax=ds_priority_size(global.LS_ds)
if LS_imax>0
{
i=0; 
for(i=0;i<LS_imax;i+=1){
    LS_shadow[i]=ds_priority_delete_min(global.LS_ds);
    ds_list_add(LS_sc_id,LS_shadow[i])
    }
LS_model=d3d_model_create()       
ds_list_add(LS_sc_model,LS_model)
LS_i1=0;LS_num=0
for(LS_i2=0;LS_i2<LS_imax;LS_i2+=1){
    if (LS_shadow[LS_i2].LS_z!=LS_shadow[LS_i1].LS_z){
        LS_model=d3d_model_create()       
        ds_list_add(LS_sc_model,LS_model)
        ds_list_add(LS_sc_layer,LS_num)
        LS_num=0;LS_i1=LS_i2
        }    
    with(LS_shadow[LS_i2]){
        switch(LS_type){
            case 0:{
                var LS_zmod,LS_Lx1,LS_Ly1,LS_Lx2,LS_Ly2;
                other.LS_num+=1
                LS_zmod=LS_z/max(other.LS_z-self.LS_z,0.000001)
                LS_Lx1=bbox_left+(bbox_left-other.x)*LS_zmod
                LS_Ly1=bbox_bottom+(bbox_bottom-other.y)*LS_zmod
                LS_Lx2=bbox_right+(bbox_right-other.x)*LS_zmod
                LS_Ly2=bbox_top+(bbox_top-other.y)*LS_zmod
                LS_zmod*=other.LS_soft;
                for(i=0;i<360;i+=other.LS_soft_quality){
                    LS_xx=lengthdir_x(LS_zmod,i);
                    LS_yy=lengthdir_y(LS_zmod,i);
                    d3d_model_primitive_begin(other.LS_model,pr_trianglestrip)
                        d3d_model_vertex(other.LS_model,bbox_left,bbox_bottom,0)
                        d3d_model_vertex(other.LS_model,LS_Lx1+LS_xx,LS_Ly1+LS_yy,0)
                        d3d_model_vertex(other.LS_model,bbox_left,bbox_top,0)
                        d3d_model_vertex(other.LS_model,LS_Lx1+LS_xx,LS_Ly2+LS_yy,0)
                        d3d_model_vertex(other.LS_model,bbox_right,bbox_top,0)
                        d3d_model_vertex(other.LS_model,LS_Lx2+LS_xx,LS_Ly2+LS_yy,0)
                        d3d_model_vertex(other.LS_model,bbox_right,bbox_bottom,0)
                        d3d_model_vertex(other.LS_model,LS_Lx2+LS_xx,LS_Ly1+LS_yy,0)
                        d3d_model_vertex(other.LS_model,bbox_left,bbox_bottom,0)
                        d3d_model_vertex(other.LS_model,LS_Lx1+LS_xx,LS_Ly1+LS_yy,0)
                    d3d_model_primitive_end(other.LS_model)
                    } 
                break;
                }
            case 1:{
                var LS_rd,LS_diff,LS_x1,LS_y1,LS_x2,LS_y2,LS_x3,LS_y3,LS_Lx1,LS_Lx2,LS_Ly1,LS_Ly2,LS_zmod;
                other.LS_num+=1
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
                LS_x3=(LS_Lx1+LS_Lx2)>>1
                LS_y3=(LS_Ly1+LS_Ly2)>>1
                LS_rd=point_distance(LS_Lx1,LS_Ly1,LS_Lx2,LS_Ly2)*0.5
                LS_zmod*=other.LS_soft;
                for(i=0;i<360;i+=other.LS_soft_quality){
                    LS_xx=lengthdir_x(LS_zmod,i);
                    LS_yy=lengthdir_y(LS_zmod,i);
                    d3d_model_primitive_begin(other.LS_model,pr_trianglestrip)
                        d3d_model_vertex(other.LS_model,LS_x1,LS_y1,0)
                        d3d_model_vertex(other.LS_model,LS_Lx1+LS_xx,LS_Ly1,0)
                        d3d_model_vertex(other.LS_model,LS_x2,LS_y2,0)
                        d3d_model_vertex(other.LS_model,LS_Lx2+LS_xx,LS_Ly2,0)
                    d3d_model_primitive_end(other.LS_model)
                    d3d_model_cylinder(other.LS_model,LS_x3-LS_rd+LS_xx,LS_y3-LS_rd+LS_yy,0,LS_x3+LS_rd+LS_xx,LS_y3+LS_rd+LS_yy,1,0,0,1,24)
                    }
                break;
                }
            case 2:{
                other.LS_num+=1

                var i,j,LS_xx,LS_yy,LS_zmod;
                
                //populating co-ordinate list
                for(i=0;i<ds_list_size(LS_shadow_poly);i+=3){
                    LS_zmod=ds_list_find_value(LS_shadow_poly,i+2)/max(other.LS_z-ds_list_find_value(LS_shadow_poly,i+2),0.000001)
                    ds_list_add(global.LS_dsx,ds_list_find_value(LS_shadow_1,i)*(1+LS_zmod)-other.x*LS_zmod)
                    ds_list_add(global.LS_dsy,ds_list_find_value(LS_shadow_2,i+1)*(1+LS_zmod)-other.y*LS_zmod)
                    ds_list_add(global.LS_dsz,LS_zmod)
                    }
                
                //drawing shadow
                for(i=0;i<360;i+=other.LS_soft_quality){
                    LS_xx=lengthdir_x(other.LS_soft,i);
                    LS_yy=lengthdir_y(other.LS_soft,i);
                    d3d_model_primitive_begin(other.LS_model,pr_trianglestrip)
                    for(j=0;j<ds_list_size(global.LS_dsz);j+=1){
                        LS_zmod=ds_list_find_value(global.LS_dsz,j)
                        d3d_model_vertex(other.LS_model,LS_x1,LS_y1,0)
                        d3d_model_vertex(other.LS_model,ds_list_find_value(global.LS_dsx,j)+LS_xx*LS_zmod,ds_list_find_value(global.LS_dsy,j)+LS_yy*LS_zmod,0) 
                        }    
                    d3d_model_primitive_end(other.LS_model)
                    }
                ds_list_clear(global.LS_dsx);
                ds_list_clear(global.LS_dsy);
                ds_list_clear(global.LS_dsz);
                break
                }
            case 3:{
                other.LS_num+=1
                var i,j,LS_x1,LS_y1,LS_xx,LS_yy,LS_zmod;
                
                //populating co-ordinate list
                for(i=0;i<ds_list_size(LS_shadow_poly);i+=3){
                    LS_x1=x+lengthdir_x(ds_list_find_value(LS_shadow_poly,i),image_angle+ds_list_find_value(LS_shadow_poly,i+1))
                    LS_y1=y+lengthdir_y(ds_list_find_value(LS_shadow_poly,i),image_angle+ds_list_find_value(LS_shadow_poly,i+1))
                    LS_zmod=ds_list_find_value(LS_shadow_poly,i+2)/max(other.LS_z-ds_list_find_value(LS_shadow_poly,i+2),0.000001)
                    ds_list_add(global.LS_dsx,LS_x1);
                    ds_list_add(global.LS_dsy,LS_y1);
                    ds_list_add(global.LS_dsx,LS_x1+(LS_x1-other.x)*LS_zmod)
                    ds_list_add(global.LS_dsy,LS_y1+(LS_y1-other.y)*LS_zmod)
                    ds_list_add(global.LS_dsz,LS_zmod)
                    }
                
                //drawing shadow
                for(i=0;i<360;i+=other.LS_soft_quality){
                    LS_xx=lengthdir_x(other.LS_soft,i);
                    LS_yy=lengthdir_y(other.LS_soft,i);
                    d3d_model_primitive_begin(other.LS_model,pr_trianglestrip)
                    for(j=0;j<ds_list_size(global.LS_dsx);j+=2){
                        LS_zmod=ds_list_find_value(global.LS_dsz,floor(j/2))
                        d3d_model_vertex(other.LS_model,ds_list_find_value(global.LS_dsx,j),ds_list_find_value(global.LS_dsy,j),0)
                        d3d_model_vertex(other.LS_model,ds_list_find_value(global.LS_dsx,j+1)+LS_xx*LS_zmod,ds_list_find_value(global.LS_dsy,j+1)+LS_yy*LS_zmod,0)  
                        }    
                    d3d_model_primitive_end(other.LS_model)
                    }
                ds_list_clear(global.LS_dsx);
                ds_list_clear(global.LS_dsy);
                ds_list_clear(global.LS_dsz);
                break
                }
            default: {break;}
            }
        }  
    }
ds_list_add(LS_sc_layer,LS_num)
var i,LS_i1,LS_i2,LS_num,LS_above,LS_imax;
}
            
 