/// @description
if (live_call()) return live_result;

gpu_set_blendmode(bm_subtract);
draw_rectangle_color(0,room_height-128,room_width,room_height,c_black,c_black,c_white,c_white,false);

draw_rectangle_color(0,-128,room_width,64,c_white,c_white,c_black,c_black,false);
gpu_set_blendmode(bm_normal);

gpu_set_tex_filter(true);
draw_sprite_ext(sprite_index,0,room_width/2,room_height/2+lengthdir_y(5,dir),.5,.5,0,c_white,1);
dir += (fadeIn * 256) * delta;
gpu_set_tex_filter(false);

if (!GAMEPAUSED) {
	text_reset();
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text_outline(room_width/2,((room_height/2)+64)+lengthdir_y(5,dir2),txt_press_start);
	text_reset();
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_font(fntSmall);
	draw_text_outline(room_width/2,((room_height)-16),txt_copyright);
	dir2 += (256 * delta)
}

var overscan	= 10;
var c_fade		= c_white;

draw_set_alpha(fadeIn);
draw_rectangle_color(-overscan,-overscan,room_width+overscan,room_height+overscan,c_fade,c_fade,c_fade,c_fade,false)
draw_set_alpha(1);

fadeIn = decrease(fadeIn,0,0.25);