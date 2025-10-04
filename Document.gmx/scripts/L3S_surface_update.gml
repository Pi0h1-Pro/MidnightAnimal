//L3S_surface_update()

draw_set_blend_mode(0)
d3d_transform_set_translation(-bbox_left,-bbox_top,1)
surface_set_target(LS_sc_surface)
draw_clear(8355711)
draw_set_color(0)           
if LS_soft {L3S_shadow_update_soft(global.LS_MST_sshadow)}
else {L3S_shadow_update(global.LS_MST_sshadow)}
draw_set_blend_mode(1)
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,0)
surface_reset_target()
draw_set_blend_mode(0)
d3d_transform_set_identity()
   
        
