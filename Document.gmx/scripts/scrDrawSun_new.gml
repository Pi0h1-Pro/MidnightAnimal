color=merge_color(merge_color(c_yellow,c_white,0.25+lengthdir_x(0.25,global.dir*0.2)),merge_color(c_red,c_orange,0.5+lengthdir_x(0.5,global.dir*0.2*0.5)),0.5+lengthdir_x(0.5,global.dir*0.2*5))
color2=merge_color(merge_color(c_yellow,c_white,0.25+lengthdir_x(0.25,global.dir*0.2)),merge_color(c_red,c_orange,0.5+lengthdir_x(0.5,global.dir*0.2*0.5)),0.5-lengthdir_x(0.5,global.dir*0.2*4))
draw_set_blend_mode(bm_add)
color=merge_color(color,c_black,0.75-random(0.05))
color2=merge_color(color2,c_black,0.75-random(0.05))
draw_rectangle_color(0,0,room_width,room_height,color,color2,color2,color,0)
draw_set_blend_mode(bm_normal)

