//L3S_get_lum(x,y)

//argument0:x position in room
//argument1:y position in room

return color_get_value(surface_getpixel(global.LS_lightmap,argument0-view_xview,argument1-view_yview))
