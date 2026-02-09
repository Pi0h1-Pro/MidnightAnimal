//L3S_get_mem()

//returns how many megabytes of video memory is being used up by the
// lighting engine's surfaces

mem=0
if surface_exists(global.LS_lightmap){
    w=surface_get_width(global.LS_lightmap)
    h=surface_get_height(global.LS_lightmap)
    mem+=w*h*4/1048576    
    }
if surface_exists(global.LS_shadow){
    w=surface_get_width(global.LS_shadow)
    h=surface_get_height(global.LS_shadow)
    mem+=w*h*4/1048576    
    }
if surface_exists(global.LS_light){
    w=surface_get_width(global.LS_light)
    h=surface_get_height(global.LS_light)
    mem+=w*h*4/1048576    
    }
if global.LS_bloom{
    if surface_exists(global.LS_bloom_map){
        w=surface_get_width(global.LS_bloom_map)
        h=surface_get_height(global.LS_bloom_map)
        mem+=w*h*4/1048576    
        }   
    if global.LS_bloom_type=2{
        for(i=0;i<ds_list_size(global.LS_bloom_mipmap);i+=1){
            w=surface_get_width(ds_list_find_value(global.LS_bloom_mipmap,i))
            h=surface_get_width(ds_list_find_value(global.LS_bloom_mipmap,i))
            mem+=w*h*4/1048576    
            }
        }
    }
with(global.LS_MST_light){
    if LS_static>1{
        if surface_exists(LS_sc_surface){
            w=surface_get_width(LS_sc_surface)
            h=surface_get_height(LS_sc_surface)
            other.mem+=w*h*4/1048576    
            }
        }
    }
return(mem)
