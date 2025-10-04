//L3S_system_destroy()

surface_free(global.LS_shadow)
surface_free(global.LS_light)
surface_free(global.LS_lightmap)

ds_priority_destroy(global.LS_ds)
ds_list_destroy(global.LS_dsx)
ds_list_destroy(global.LS_dsy)
ds_list_destroy(global.LS_dsz)

if global.LS_bloom{
    surface_free(global.LS_bloom_map)
    }
if global.LS_glow{
    surface_free(global.LS_glow_map)
    }
with(global.LS_MST_light){
    if LS_static=1{
        for(i=0;i<ds_list_size(LS_sc_model);i+=1)
            {d3d_model_clear(ds_list_find_value(LS_sc_model,i))}
        ds_list_destroy(LS_sc_model)
        ds_list_destroy(LS_sc_id)
        ds_list_destroy(LS_sc_layer)
        }
    if LS_static>1{
        if surface_exists(LS_sc_surface){
            surface_free(LS_sc_surface)
            }
        }
    }
