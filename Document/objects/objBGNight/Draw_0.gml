dir += 0.25;
colorbase1 = merge_color(merge_color(merge_color(c_blue, c_purple, 0.5 + lengthdir_y(0.5, dir * 3)), merge_color(c_fuchsia, c_orange, 0.5 + lengthdir_y(0.5, dir * 4.7)), 0.25 + lengthdir_y(0.25, dir * 2)), c_blue, 0.75);
colorbase2 = merge_color(merge_color(merge_color(c_blue, c_purple, 0.5 + lengthdir_x(0.5, dir * 3)), merge_color(c_fuchsia, c_orange, 0.5 + lengthdir_x(0.5, dir * 4.7)), 0.25 + lengthdir_x(0.25, dir * 2)), c_purple, 0.5);
color1 = merge_color(colorbase1, colorbase2, 0.5 + lengthdir_x(0.5, dir * 5));
color2 = merge_color(colorbase1, colorbase2, 0.5 + lengthdir_x(0.5, dir * 5 + 45));
color3 = merge_color(colorbase2, colorbase1, 0.5 + lengthdir_x(0.5, dir * 5 + 90));
color4 = merge_color(colorbase2, colorbase1, 0.5 + lengthdir_x(0.5, dir * 5 + 135));

draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 60, __view_get( e__VW.YView, 0 ) - 60, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 60, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 60, color1, color2, color3, color4, 0);

/*

if global.bonustime>0 {
if lastbonus<=0 {if global.alienware=1 scrAlienWareRed()}
global.bonustime-=1
if global.bonustime<=0 {if global.alienware=1 scrAlienWarePink()}
draw_set_blend_mode(bm_add)
amount=global.bonustime*0.25
while amount>1 amount-=1
if global.comboflash=0 {
color1=merge_color(c_blue,c_aqua,amount)
color2=merge_color(c_fuchsia,c_orange,amount)
} else {
color1=merge_color(c_purple,c_aqua,amount)
color2=merge_color(c_blue,c_fuchsia,amount)
}
draw_rectangle_color(view_xview[0]-60,view_yview[0]-60,view_xview[0]+view_wview[0]+60,view_yview[0]+view_hview[0]+60,color1,color1,color2,color2,0)
draw_set_blend_mode(bm_normal)
}
lastbonus=global.bonustime

/* */
/*  */
