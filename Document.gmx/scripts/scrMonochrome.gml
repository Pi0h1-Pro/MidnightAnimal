//Monochrome by GearGOD
//Arguments: source sprite, fore, back
//Return: sprite handle
//Use: will return a monochrome version of sprite
//where fore replaces white and back replaces black
//Eg: monochrome(sprite,c_white,c_black) will return a black and white copy
//and monochrome(sprite,c_black,c_white) will return an inverted b/w copy
var w,h,asp,tsp;
w = sprite_get_width(argument0)
h = sprite_get_height(argument0)
draw_clear(argument1)
asp = sprite_create_from_screen(0,0,w,h,0,1,0,0)
sprite_set_alpha_from_sprite(asp,argument0)
draw_clear(argument2)
draw_sprite(asp,0,0,0)
sprite_delete(asp)
asp = sprite_create_from_screen(0,0,w,h,0,1,sprite_get_xoffset(argument0),sprite_get_yoffset(argument0))
draw_clear(c_black)
d3d_set_fog(1,c_white,0,0)
draw_sprite(argument0,0,sprite_get_xoffset(argument0),sprite_get_yoffset(argument0))
d3d_set_fog(0,c_white,0,0)
tsp = sprite_create_from_screen(0,0,w,h,0,1,0,0)
sprite_set_alpha_from_sprite(asp,tsp)
sprite_delete(tsp)
return asp
