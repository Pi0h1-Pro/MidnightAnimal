//L3S_define_shadow(type,relative z,etc..)

//argument0: Shadow type
//argument1: Relative z

//Shadow types:                     other info:                     
//0: 'bounding box' caster          -uses the sprites (works with masks aswell) bounding-box to 
//                                  cast a box shadow *highly optimised

//1: barrel caster                  -Uses specified radius to draw a barrel shadow with x/y
//                                  at the barrels centre.
//                                  -argument4=barrel radius.

//2: absolute polygon caster        -Points are absolute within the room, 
//                                  -Points must manually be added using shadow_vertex scripts  
//                                  -Using the scripts: you specify the points x and y inside
//                                   the room.    

//3: relative polygon caster        -Points move relative to calling object's image_angle and x/y
//                                  -Points must manually be added using shadow_vertex scripts  
//                                  -Using the scripts: you specify the points relative angle
//                                   and distance from the calling objects x/y.

//>=4: non shadow caster              -I know it sounds weird but its useful for when you need an
//                                  bump/spec/glow map applied without a shadow being cast.

//default material properties 
LS_mat_map=sprite_index
LS_spec_map=-1
LS_glow_map=-1
LS_bump_map1=0
LS_bump_map2=-1
LS_bump_rng=0

//shadow properties
LS_type=argument0
LS_z=argument1
switch(LS_type){
    case 1: {LS_radius=argument2;break}
    case 2: {LS_shadow_poly=ds_list_create();break;}
    case 3: {LS_shadow_poly=ds_list_create();break;}
    default: {break}
    }
    
