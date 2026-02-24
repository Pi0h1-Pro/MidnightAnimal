if (dialogueIndex > dialogueTotal) {
	exit;
}

draw_self();

sprite_index = face[dialogueIndex];

draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_set_color(c_black);
draw_text(x+32+8+1,y-16+1,dialogue[dialogueIndex])
draw_set_color(c_white);
draw_text(x+32+8,y-16,dialogue[dialogueIndex])

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text((room_width/2)+lengthdir_x(2,current_time*.5)+1,y+48+1,"[SPACE] to advance")
draw_set_color(c_gray);
draw_text((room_width/2)+lengthdir_x(2,current_time*.5),y+48,"[SPACE] to advance")

draw_set_color(c_white);