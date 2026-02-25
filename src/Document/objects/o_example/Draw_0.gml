//draw a grid, then draw the title.
//none of this is needed for the rest of the objects to work
draw_self()
draw_set_color(c_dkgray)
for (i=0; i<room_width; i+=32)
{
    draw_line(i,0,i,room_height)
}

for (i=0; i<room_height; i+=32)
{
    draw_line(0,i,room_width,i)
}
draw_set_color(c_white)

draw_text(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+100,string_hash_to_newline("Drawings in regular draw events are magnified in the draw gui event"))
draw_set_halign(fa_center)
draw_text_transformed(640,360,string_hash_to_newline("Shock Glass"),9.9*image_xscale,9.9*image_yscale,image_angle)
draw_set_color(image_blend)
draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("Shock Glass"),10*image_xscale,10*image_yscale,image_angle)
draw_set_halign(fa_left)
draw_reset()

