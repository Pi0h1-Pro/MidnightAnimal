set_automatic_draw(false)
tile_layer_show(1000)
tile_layer_show(999)
tile_layer_hide(1002)  
tile_layer_hide(3)
tile_layer_show(1000000)
draw_clear_alpha(make_color_hsv(0, 0, 2), 0)
background_showcolor = 0
view_enabled = 0
view_visible[0] = 0

instance_deactivate_all(true)
tilesurf = surface_create(room_width * 3, room_height * 3)
surface_set_target(tilesurf)
draw_clear_alpha(make_color_hsv(0, 0, 2), 0)
surface_reset_target()
surface_set_target(tilesurf)
draw_clear_alpha(make_color_hsv(0, 0, 2), 0)
screen_redraw()
surface_reset_target()

if !instance_exists(objLSD) set_automatic_draw(true)
tile_layer_hide(1000)
tile_layer_hide(999)
tile_layer_show(1002)
tile_layer_hide(1000000)
instance_activate_all()
surface_set_target(tilesurf)
d3d_set_projection_ortho(0, 0, room_width, room_height, 0)
with objContainerFloor {
    draw_sprite(sprite_index, image_index, x, y)
    visible = 0
}
surface_reset_target()
background_showcolor = 1
view_enabled = 1
view_visible[0] = 1

