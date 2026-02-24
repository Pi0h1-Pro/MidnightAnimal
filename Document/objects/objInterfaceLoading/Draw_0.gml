draw_sprite_ext(sprite_index,image_index,x-(separation/2),y,image_xscale,image_yscale,image_angle,c_text,image_alpha);
draw_sprite_ext(sprIconLoadingOutline,image_index,x-(separation/2),y,image_xscale,image_yscale,-(image_angle*0.25),c_text,image_alpha);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fntSmall);
draw_text_transformed_colour(x+(separation/2),y,"LOADING...",.5,.5,0,c_text,c_text,c_text,c_text,image_alpha);