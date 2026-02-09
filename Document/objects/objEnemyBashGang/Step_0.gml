if (image_index < 8)
	image_index += 0.35;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprEGangDieStomp;
	my_id.image_index = 11;
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.ammo = ammo;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 10;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((600)+400*(global.factor))+"pts"
	global.myscore += (600) + 400 * (global.factor);
	global.killscore += 600;
	global.boldscore += 400 * global.factor;
	global.combotime = 240;
	global.combo += 1;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	ds_list_add(global.bonuslist, "Execution");
	if (global.combotime < 12)
		global.combotime = 12;
	exit;
}
if (image_index >= 5 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndPunch);
	global.shake = 18;
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
}




/* if global.xbox=1 scrXboxBashKill()
if global.controller=1 {
if gettrigger_r()>100 {
if rtrig=0 {
if image_index=3 {
rtrig=1
sound_play(sndWeaponHit)
if energie>0 {
energie-=1
image_index=0
} else {
sound_play(choose(sndHit,sndHit1,sndHit2,sndHit3))
sound_play(sndPunch)
myx=x+lengthdir_x(20,image_angle)
myy=y+lengthdir_y(24,image_angle)
my_id=instance_create(x,y-12,objScore)
my_id.text="+"+string((200)+400*(global.factor-1))+"pts"
global.myscore+=(200)+400*(global.factor-1)
my_id=instance_create(myx,myy,objBloodPool)
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprEBackBashed
my_id.image_index=floor(random(4))
my_id.image_angle=image_angle
if global.controller=1 my_id=instance_create(x,y,objPlayerController) else my_id=instance_create(x,y,objPlayerMouse)
my_id.reload=30
instance_destroy()
}
}
}
} else rtrig=0
}

vdist=point_distance(x,y,room_width/2,room_height/2)
vdir=point_direction(room_width/2,room_height/2,x,y)
viewspeed=point_distance(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,x+lengthdir_x(vdist*0.2,vdir-180),y+lengthdir_y(vdist*0.2,vdir-180))*0.1
viewdir=point_direction(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,x+lengthdir_x(vdist*0.2,vdir-180),y+lengthdir_y(vdist*0.2,vdir-180))
view_xview[0]+=lengthdir_x(viewspeed,viewdir)
view_yview[0]+=lengthdir_y(viewspeed,viewdir)
view_angle[0]=lengthdir_y(vdist*(1/160),vdir*2)


if image_index<3 image_index+=0.25

/* */
/*  */
