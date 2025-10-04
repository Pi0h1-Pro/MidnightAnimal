//L3S_dsurface_update()

var temp;
temp=LS_sc_state;
LS_sc_state=0;
if self.bbox_right>view_xview if self.bbox_left<view_xview+view_wview
if self.bbox_top<view_yview+view_hview if self.bbox_bottom>view_yview
    {LS_sc_state=1}
if temp!=LS_sc_state{
    if LS_sc_state {
        LS_sc_surface=surface_create(bbox_right-bbox_left,bbox_bottom-bbox_top)
        if surface_exists(LS_sc_surface){L3S_surface_update(global.LS_MST_sshadow)}
        else{show_debug_message("light caster: "+string(id)+"#Error: Failed to create surface#Probable cause: low video memory")}
        }
    else{surface_free(LS_sc_surface)}
    }