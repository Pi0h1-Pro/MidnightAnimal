/// @description
if (live_call()) return live_result;
//dev_text_right(game_w - 16, 16, string(fps)+" FPS");

//dev_text(32,32,"global.convo_index = "+string(global.convo_index));
display_set_gui_size(GAMEW, GAMEH);
if (drawHud) {
	if (room == rmLevelBreakdownCrackdown) {
		gpu_set_blendmode(bm_subtract);
	    var my_x = random(32);
	    var my_y = random(32);
	    draw_sprite_tiled(sprHLMScanlines, 0, my_x, my_y);
	    gpu_set_blendmode(bm_normal);
	} else {
		if instance_exists(objDialogue) && objDialogue.face[objDialogue.page] == sprFaceTutorialRichardOld {
			gpu_set_blendmode(bm_subtract);
		    var my_x = random(32);
		    var my_y = random(32);
			draw_set_alpha(.25);
		    draw_sprite_tiled(sprHLM2Noise, 0, my_x, my_y);
			draw_set_alpha(1);
		    gpu_set_blendmode(bm_normal);
		} else {
			gpu_set_blendmode(bm_subtract);
		    var my_x = random(32);
		    var my_y = random(32);
			draw_set_alpha(.125);
		    draw_sprite_tiled(sprPSXDithering, 0, my_x, my_y);
			draw_set_alpha(1);
		    gpu_set_blendmode(bm_normal);
		}
	}
}

if (room == rmCutsceneWhiplash || room == rmLevelWhiplash || room == rmLevelWhiplashUpstairs) {
	//gpu_set_blendmode(bm_subtract);
	var my_x = random(32);
	var my_y = random(32);
	draw_set_alpha(.125);
	draw_sprite_tiled(sprTutorialScanlines,0,my_x,my_y);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}

if (isRestarting){
	if (room == global.currentRoom) {
		draw_set_colour(c_black);
		draw_rectangle(-10,-10,display_get_gui_width()+10,display_get_gui_height()+10,false);
		draw_set_colour(c_white);
	}
}

if (isDevMode && is_debug_overlay_open()) {
	draw_sprite_ext(spriteCursor,0,mousegui_x,mousegui_y,.5,.5,0,c_white,1);
}


border = -1;

draw_set_colour(c_red);
// top
draw_rectangle(-1000, -1000, 1000, +border, false);

// bottom
draw_rectangle(-1000, GAMEH-border, 1000, 1000,false);

// left
draw_rectangle(-1000, 1000, +border, +border,false);

// right
draw_rectangle(GAMEW - border, -1000, 1000, +1000,false);

draw_set_colour(c_white);
//display_set_gui_size(-1,-1);


if GAMEPAUSED exit;
if !showCursor exit;
draw_light(mousegui_x(0),mousegui_y(0),16+random(8));
draw_sprite(spriteCursor,0,mousegui_x(0),mousegui_y(0));