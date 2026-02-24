reload = 10;
classicCutscene = false;
playedThunderSFX = false;
wait = 60;
skipTimer = 100;
image_speed = 0.15;
image_xscale = 2;
image_yscale = 2;
bg_color = make_colour_rgb(97, 109, 176)
talking = false;
colorErick1 = merge_color(c_black, c_black, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorErick2 = merge_color(c_teal, c_blue, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorBen1 = merge_color(c_black, c_black, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorBen2 = merge_color(c_fuchsia, c_purple, 0.5 + lengthdir_x(0.25, global.dir * 2));

colorBoss1 = merge_color(c_black, c_black, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorBoss2 = merge_color(c_lime, c_green, 0.5 + lengthdir_x(0.25, global.dir * 2));

colorScorp1 = merge_color(c_black, c_black, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorScorp2 = merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.25, global.dir * 2));

colorPizza1 = merge_color(c_black, c_black, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorPizza2 = merge_color(c_yellow, c_orange, 0.5 + lengthdir_x(0.25, global.dir * 2));

colorDefault1 = merge_color(c_black, c_black, 0.5 + lengthdir_x(0.25, global.dir * 2));
colorDefault2 = merge_color(c_ltgray, c_gray, 0.5 + lengthdir_x(0.25, global.dir * 2));

phonecolor1 = colorDefault1;
phonecolor2 = colorDefault2;
blackx = 0;
phonex = 0;

textcolor1 = txtColorDefault;
textcolor2 = txtFront;

page = 0;

face[page] = sprFaceErick
message[page++] = "Hello World";
face[page] = sprFaceBen
message[page++] = "Goodbye Planet";
face[page] = sprFaceAres
message[page++] = "Adieu";
pageTotal = page;
page = 0;

image_alpha=0;

destroy = false;

finished = false;

scrGetMessage(global.convo_index);

if (room == rmCutsceneSlither) {
	my_id = spawn_instance(objPlayer.x, objPlayer.y, objPoliceHat);
	my_id.direction = point_direction(objPlayer.x, objPlayer.y,objAresCutscenes.x,objAresCutscenes.y) //irandom(360);
	my_id.sprite_index = sprBriefcase;
	   my_id.speed = 3;
	with objPlayer {
		sprite_index = sprPWalkUnarmed;
	}
}

if (room == rmLevelWhiplashUpstairs) {
	if (global.convo_index == 1) {
		if instance_exists(objPigButcher) {
			objPigButcher.stopMoving = true;
		}
	}
}

if (room == rmCutsceneDejaVu) {
	if !instance_exists(objTheCameo) {
		spawn_instance(x,y,objTheCameo);
	}
}