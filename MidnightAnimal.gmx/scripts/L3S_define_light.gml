//L3S_define_light(shadows,z,soft_amount,soft inc,static,etc)

//argument0: Shadows caster
//argument1: Relative Z position
//argument2: Softness amount
//argument3: Softness quality
//argument4: Static type
//argument5: Maintain softness when casting dynamically *for static casters

//Static Types:
// 1 Mesh Based: Uses a d3d model to hold a mesh of the cast shadows
// 2 Surface Based: Redraws a surface containing the casted shadows
// 3 Dynamic surface based: Redraws a surface containing the casted shadows
//                           but frees it when offscreen

//additional light properties: 
// - x: x position of light in the room
// - y: y position of light in the room
// - image_xscale: x scale of light 
// - image_yscale: y scale of light
// - image_angle: casting angle of light
// - image_blend: colour of light
// - image_alpha: intensity of light

LS_shadow_cast=argument0
LS_z=argument1
LS_soft=argument2
LS_soft_quality=argument3
LS_static=argument4
switch(LS_static){
    case 1:{
        LS_sc_model=ds_list_create();
        LS_sc_id=ds_list_create();
        LS_sc_layer=ds_list_create();
        LS_sc_dsoft=argument5
        break;
        }
    case 2:{
        LS_sc_surface=surface_create(bbox_right-bbox_left,bbox_bottom-bbox_top)
        LS_sc_dsoft=argument5
        break;
        }
    case 3:{
        LS_sc_surface=-10
        LS_sc_state=0
        LS_sc_dsoft=argument5
        break;    
        }
    default:{break}
    }
