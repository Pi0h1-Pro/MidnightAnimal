//L3S_system_init(ambient colour,mod level,Spec Hightlights,Light bloom)
//argument0: Ambient light colour
//argument1: Modulation level
//argument2: Enable Specular highlights 
//argument3: Enable light bloom

global.LS_ambient=argument0
global.LS_mod=argument1
global.LS_spec=argument2
global.LS_glow=argument3
global.LS_bloom=argument4
global.LS_light=surface_create(view_wview + 100,view_hview + 100)
global.LS_shadow=surface_create(view_wview + 100,view_hview + 100)
global.LS_lightmap=surface_create(view_wview + 100,view_hview + 100)

//Shadow caster data structures
global.LS_ds=ds_priority_create()
global.LS_dsx=ds_list_create()
global.LS_dsy=ds_list_create()
global.LS_dsz=ds_list_create()

// feel free to delete  //
global.light_renders=0  //
// feel free to delete  //
