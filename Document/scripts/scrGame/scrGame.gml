function initGlobalVars() {
	global.cigaretteTimer	= 100;
	global.cigaretteTimerCheckpoint	= global.cigaretteTimer;
	global.hardmode			= false;
	global.invalidWeapon	=  -(sprite_get_number(sprWeapons) - 17);
	global.ninjaGirlKnifeIndex = sprite_get_number(sprWeapons) - 1;
	global.toyMP5			=	global.ninjaGirlKnifeIndex-8;
	global.firstThrowWeapon = global.toyMP5 + 1;
	global.isFadeOutMusic	= false;
    global.inElevator       = false;
	global.trackName		= "The Painted Foxes - Don't Trip"
	global.game_width		= 480;
	global.game_height		= 270;
	global.gamereload		= false;
	global.maxroom			= room;
	global.grenadeammoset	= 3;
	global.showhud			= 1;
	global.combo			= 0;
	global.combotime		= 0;
	global.biggestcombo		= 0;
	global.longesttime		= 0;
	global.lives			= 3;
	global.progress			= 0;
	global.steamon			= 0;
	global.bonuslist		= array_create(0);
	global.bonustime		= 0;
	global.newmasks			= 0;
	global.floorbloods		= 0;
	global.playerchar		= 1;
	global.convo_index		= 0;
	global.paused			= 0;
	global.talked			= 1;
	global.i				= 0;
	global.surfaces			= 1;
	global.blood			= 1;
	global.surfacesprites	= 0;
	global.resetstory		= 0;
	global.comboflash		= 0;
	global.parttitle[0]		= "PART ONE";
	global.parttitle[1]		= "PHONECALLS";
	global.nextlevel		= rmCutsceneWhiplash;
	//global.sequence			= rmCutsceneOverturn;
	global.revisit			= 0;
	global.maskon			= 1;
	global.maskindex		= 0;
	global.latestOverturnGrade = "F";
	ini_open("config.ini");
    //Misc
	global.blackbars = ini_read_real("Misc", "Letterboxing", 1);
	global.motionblur = ini_read_real("Misc", "Motion Blur", 1);
    //Controller
    global.shoulderToTrigger = ini_read_real("Controller", "Swap Shoulder/Trigger", 0);
    global.rumble = ini_read_real("Controller", "Rumble", 1);
    global.deadzone = ini_read_real("Controller", "Deadzone", 20) / 100;
	
	ini_close();
	scrInitBindings();
	scrLoadKeys();
	scrInitScore();
    scrAchievementsInit();
	scrLoadAchievements();
	scrLoadUnlocked();
}

function loadFile(filename = "fullscreen") {
	if file_exists(working_directory + filename) {
		file = file_text_open_read(working_directory + filename);
		return file_text_read_real(file);
	}
}

function saveFile(filename = "fullscreen", value = 0){
	file  = file_text_open_write(working_directory + filename);
	file_text_write_real(file, value);
	file_text_close(file);
}

function drawCursor() {
	var cursorDir		= point_direction(objPlayer.x, objPlayer.y, global.mousex, global.mousey);
	var sprite_cursor	= sprCursorDefaultDot;
	var sprite_dot		= sprCursorDot;
	var c_cursorshadow	= c_gray;
	var c_cursor		= c_white;
	var c_outline		= c_black;
	var outline_definition = 4;
	
	switch (global.playerchar) {
    case 1: // Erick
	    sprite_cursor	= sprCursor;
		sprite_dot		= sprCursorDot;
		c_cursorshadow	= c_blue;
		c_cursor		= c_aqua;
	break;
	case 2: // Ben
	    sprite_cursor	= sprBenCursor;
		sprite_dot		= sprBenCursorDot;
		c_cursorshadow	= c_purple;
		c_cursor		= c_fuchsia;
	break;
	
	default:
		sprite_cursor	= sprCursorDefault;
		sprite_dot		= sprCursorDefaultDot;
		c_cursorshadow	= c_gray;
		c_cursor		= c_white;
	break;
	}
	
	var dot_x = global.mousex;
	var dot_y = global.mousey;
	var cursor_x = dot_x + + lengthdir_x(5, cursorDir);
	var cursor_y = dot_y + + lengthdir_y(5, cursorDir);
	
	// Cursor
	if (instance_exists(objDialogue) && objDialogue.classicCutscene) { } else {
		if sprite_cursor == sprCursorDefault {
			for (i = 0; i < 360; i += 360 / outline_definition) {
				draw_sprite_ext(sprite_cursor,	image_index, cursor_x + lengthdir_x(1,i) +1, cursor_y + lengthdir_y(1,i)+1, 1, 1, cursorDir, c_outline, 1);
			}
			draw_sprite_ext(sprite_cursor,	image_index, cursor_x+ 1, cursor_y+ 1, 1, 1, cursorDir, c_cursorshadow, 1);
			for (i = 0; i < 360; i += 360 / outline_definition) {
			    draw_sprite_ext(sprite_cursor,	image_index, cursor_x + lengthdir_x(1,i), cursor_y + lengthdir_y(1,i), 1, 1, cursorDir, c_outline, 1);
			}
		    draw_sprite_ext(sprite_cursor,	image_index, cursor_x, cursor_y, 1, 1, cursorDir, c_cursor, 1);
	
		} else {
		
			for (i = 0; i < 360; i += 360 / outline_definition) {
				draw_sprite_ext(sprite_dot,		image_index, dot_x - 0.5 + lengthdir_x(1,i) +1, dot_y - 0.5+ lengthdir_y(1,i) +1, 1, 1, 0, c_outline, 1);
				draw_sprite_ext(sprite_cursor,	image_index, cursor_x + lengthdir_x(1,i) +1, cursor_y + lengthdir_y(1,i)+1, 1, 1 + SHAKE / 2, cursorDir, c_outline, 1);
			}
		
			draw_sprite_ext(sprite_cursor,	image_index, cursor_x+ 1, cursor_y+ 1, 1, 1 + SHAKE / 2, cursorDir, c_cursorshadow, 1);
			draw_sprite_ext(sprite_dot,		image_index, dot_x - 0.5 + 1, dot_y - 0.5+ 1, 1, 1, 0, c_cursorshadow, 1);
			for (i = 0; i < 360; i += 360 / outline_definition) {
			    draw_sprite_ext(sprite_dot,		image_index, dot_x - 0.5 + lengthdir_x(1,i), dot_y - 0.5+ lengthdir_y(1,i), 1, 1, 0, c_outline, 1);
				draw_sprite_ext(sprite_cursor,	image_index, cursor_x + lengthdir_x(1,i), cursor_y + lengthdir_y(1,i), 1, 1 + SHAKE / 2, cursorDir, c_outline, 1);
			}
		    draw_sprite_ext(sprite_dot,		image_index, dot_x - 0.5, dot_y - 0.5, 1, 1, 0, c_cursor, 1);
		    draw_sprite_ext(sprite_cursor,	image_index, cursor_x, cursor_y, 1, 1 + SHAKE / 2, cursorDir, c_cursor, 1);
		}
	}
}

function playSound(snd = sndHit) {
	audio_play_sound(snd, 0, 0);
}

function gameRestart() {
	game_restart();
}

function dropBenItems() {
	if (global.playerchar == 2) {
		my_id = spawn_instance(x + lengthdir_x(24, dir), y + lengthdir_y(24, dir), objMaskDrop)
		my_id.direction = irandom(360);
	    my_id.speed = 1.5 + random(1)
	
		if (global.maskindex == 0) {
			my_id = spawn_instance(x, y, objPoliceHat);
			my_id.direction = irandom(360);
			my_id.sprite_index = sprCleaver;
		    my_id.speed = 1.5 + random(1);
		}
	}
}

function ammoCapHack() {
	switch (sprite_index) {
		case sprPWalkDoubleBarrel: gunMaxAmmo = 2 break;
		case sprBenWalkDoubleBarrel: gunMaxAmmo = 2 break;
		default: gunMaxAmmo = 999 break;
	}
	
	if (ammo > gunMaxAmmo) {ammo = gunMaxAmmo}
}

function showMusicTrack() {
	var uiTrack = global.trackName;
	draw_set_halign(fa_right);
	draw_set_valign(fa_center);
	draw_set_font(fntDefault);
	draw_sprite_ext(sprDisc, 0, playbackX - 32 - string_width(uiTrack), playbackY - 16, 1, 1, discAngle, c_white, 1);
	discAngle -= 10;
	draw_text_colour(playbackX - 16,playbackY - 16, uiTrack, c_black, c_white, c_dkgray, c_dkgray, 1);
}

function instance_replace(_x = x,_y = y,_inst) {
	instance_create_depth(_x,_y,depth,_inst, {
		image_angle : image_angle,
		direction : direction
	});
	instance_destroy();
}

function createWallShadow() {
	xoffset = 4;
	yoffset = 4;

	if (room == rmLevelBreakdownCrackdown) {
		xoffset = 2;
		yoffset = 3;
	}

	instance_create_depth(x + xoffset, y + yoffset, depth + 3, objWallShadow, {
		image_angle:	image_angle,
		image_xscale:	image_xscale,
		image_yscale:	image_yscale,
		sprite_index:	sprite_index,
		image_index:	image_index,
		visible:		visible,
	});
}

function drawDoor() {
	switch (room) {
		case rmCutsceneNoServiceDownstairs:		break;
		case rmCutsceneNoTalkDownstairs:		break;
		default: 
			case rmLevelBreakdownCrackdown:
			draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_yscale,image_angle,c_black,0.5);
		break;
	}
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

function ammoHardMode() {
	if (isHardMode) {
			switch (sprite_index) {
				case sprPWalkSilencer:
			        gunMaxAmmo = 13;
				case sprPWalkMP5:
			        gunMaxAmmo = 32;
				case sprPWalkShotgun:
			        gunMaxAmmo = 6;
				case sprPWalkDoubleBarrel:
			        gunMaxAmmo = 2;
			    case sprPWalkM16:
			        gunMaxAmmo = 24;
			    case sprPWalkP90:
			        gunMaxAmmo = 50;
				case sprPWalkScorpion:
					gunMaxAmmo = 20;
			    case sprPWalkPistol:
			        gunMaxAmmo = 17;
				case sprPWalkKalashnikov:
					gunMaxAmmo = 35;
				case sprPWalkFamae:
					gunMaxAmmo = 20;
					
				case sprBenWalkSilencer:
			        gunMaxAmmo = 13;
				case sprBenWalkMP5:
			        gunMaxAmmo = 32;
				case sprBenWalkShotgun:
			        gunMaxAmmo = 6;
				case sprBenWalkDoubleBarrel:
			        gunMaxAmmo = 2;
			    case sprBenWalkM16:
			        gunMaxAmmo = 24;
			    case sprBenWalkP90:
			        gunMaxAmmo = 50;
				case sprBenWalkScorpion:
					gunMaxAmmo = 20;
			    case sprBenWalk9mm:
			        gunMaxAmmo = 17;
				case sprBenWalkKalashnikov:
					gunMaxAmmo = 35;
				case sprBenWalkFamae:
					gunMaxAmmo = 20;
			    default:
			        return 0;
			}
	
		if (ammo > (gunMaxAmmo/2)) {ammo = (gunMaxAmmo/2)}
	}
}

function draw_circular_bar(xx = x, yy = y, value = 100, max = 100, colour = c_white, radius = 20, transparency = 1, width = 6)
{
	if (value > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
    
	    val = (value/max) * numberofsections 
    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        piesurface = surface_create(radius*2,radius*2)
            
	        draw_set_colour(colour);
	        draw_set_alpha(transparency);
        
	        surface_set_target(piesurface)
        
	        draw_clear_alpha(c_blue,0.7)
	        draw_clear_alpha(c_black,0)
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(radius, radius);
        
	        for(i=0; i<=val; i++) {
	            len = (i*sizeofsection)+90; // the 90 here is the starting angle
	            tx = lengthdir_x(radius, len);
	            ty = lengthdir_y(radius, len);
	            draw_vertex(radius+tx, radius+ty);
	        }
        
	        draw_primitive_end();
        
	        draw_set_alpha(1);
        
	        gpu_set_blendmode(bm_subtract)
	        draw_set_colour(c_black)
	        draw_circle(radius-1, radius-1,radius-width,false)
	        gpu_set_blendmode(bm_normal)

	        surface_reset_target()
     
	        draw_surface(piesurface,xx-radius, yy-radius)
        
	        surface_free(piesurface)
        
	    }
    
	}
}