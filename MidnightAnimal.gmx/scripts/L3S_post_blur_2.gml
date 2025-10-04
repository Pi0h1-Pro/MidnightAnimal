//L3S_post_blur_2(surface,number of mipmaps,radius of blur)

//if you want to use it, this blur requires that you store the mipmap 
//surfaces in a ds_list

//argument0: source surface
//argument1: ds list holding mipmaps
//argument2: blur amount per mipmap
//argument3: Add or average

var LS_scale,surf;
LS_scale=1;
draw_set_color(0)
for(j=0;j<ds_list_size(argument1);j+=1){
    surf=ds_list_find_value(argument1,j)
    surface_set_target(surf)
    draw_clear(0)
    draw_surface_ext(argument0,0,0,LS_scale,LS_scale,0,c_white,1)
    for(i=1;i<argument2;i+=1){
        k=1-i/argument2   
        draw_surface_ext(surf,i,0,1,1,0,c_white,k)
        draw_surface_ext(surf,-i,0,1,1,0,c_white,k) 
        }
    for(i=1;i<argument2;i+=1){
        k=1-i/argument2
        draw_surface_ext(surf,0,i,1,1,0,c_white,k)
        draw_surface_ext(surf,0,-i,1,1,0,c_white,k)
        }
    if argument3{
        surface_set_target(argument0)              
        draw_set_blend_mode_ext(2,2)
        draw_surface_ext(surf,0,0,1/LS_scale,1/LS_scale,0,c_white,1)
        }
    else{
        draw_set_blend_mode_ext(2,2)
        draw_set_color(0)
        draw_rectangle(0,0,view_wview,view_hview,0)
        surface_set_target(argument0)              
        draw_set_blend_mode_ext(9,1)
        draw_set_color(make_color_rgb(127,127,127))
        draw_rectangle(0,0,view_wview,view_hview,0)
        draw_set_blend_mode(1)
        draw_surface_ext(surf,0,0,1/LS_scale,1/LS_scale,0,c_white,0.5)
        }
    draw_set_blend_mode(0)
    LS_scale*=0.5
    }
surface_reset_target()
if keyboard_check(vk_alt){surface_save(argument0,"glow.bmp")}

return (argument0)

   