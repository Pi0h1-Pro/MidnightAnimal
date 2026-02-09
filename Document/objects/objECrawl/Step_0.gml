if (!place_free(x + lengthdir_x(8, image_angle), y + lengthdir_y(8, image_angle)))
	image_angle += 10;
if ((image_index > 2 && image_index < 4) || (image_index > 7))
{
	if (place_free(x + lengthdir_x(0.5, image_angle), y))
		x += lengthdir_x(0.5, image_angle);
	if (place_free(x, y + lengthdir_y(0.5, image_angle)))
		y += lengthdir_y(0.5, image_angle);
}
if (crawl > 0)
	crawl -= 1;
else
{
	if (image_index < 3)
		image_speed = 0;
}


if (!instance_exists(objPlayer))
	exit;
if (point_distance(x, y, objPlayer.x, objPlayer.y) < 12 && objPlayer.object_index == objPlayerMouse)
{
	kill = 0;
	if (global.xbox == 1)
		kill = checkbutton(0, getid(11));
	else
		kill = keyboard_check(vk_space);
	if (kill)
	{
		with (objPlayer)
		{
			if (sprite_index == sprPWalkUnarmed || sprite_index == sprPWalkBag)
				nothing = 1;
			else
			{
				my_id = instance_create(objPlayer.x + lengthdir_x(8, objPlayer.dir - 90), objPlayer.y + lengthdir_y(8, objPlayer.dir - 90), objWeaponThrow);
				my_id.image_index = scrCurrentWeaponExt(sprite_index);
				my_id.direction = dir - 70 - random(40);
				my_id.speed = 1 + random(2);
				my_id.ammo = ammo;
				sprite_index = sprPWalkUnarmed;
			}
		}
		
		my_id = instance_create(x, y, objPAttackSnap);
		if (objPlayer.sprite_index == sprPWalkBag || objPlayer.sprite_index == sprPAttackBag)
			my_id.bag = 1;
		my_id.maskindex = objPlayer.maskindex;
		my_id.maskon = 1;
		my_id.image_angle = image_angle;
		with (objPlayer)
		{
			if (object_index == objPlayerMouse || object_index == objPlayerController)
				instance_destroy();
		}
		
		instance_destroy();
	}
}

/*
if speed>0 and friction>0 {
if speed<=0.2 {friction=0 speed=0}
exit
}
with objDoorH solid=1
with objDoorV solid=1
with objWindow {test=solid solid=1}
image_speed=0.15
speed=0
if image_index>0 and image_index<3 speed=0.5
if image_index>5 and image_index<9 speed=0.5
if image_index>12 speed=0.5
if speed>0 {
if !place_free(x+lengthdir_x(16,direction),y+lengthdir_y(16,direction)) image_angle+=4
direction=image_angle
}
with objDoorH solid=0
with objDoorV solid=0
with objWindow solid=test
if !instance_exists(objPlayer) exit
if point_distance(x,y,objPlayer.x,objPlayer.y)<12 and objPlayer.object_index=objPlayerMouse {
kill=0
if global.xbox=1 kill=checkbutton(0,getid(11)) else kill=keyboard_check(vk_space)
if kill {
with objPlayer {
if sprite_index=sprPWalkUnarmed or sprite_index=sprPWalkBag nothing=1 else {
my_id=instance_create(objPlayer.x+lengthdir_x(8,objPlayer.dir-90),objPlayer.y+lengthdir_y(8,objPlayer.dir-90),objWeaponThrow)
my_id.image_index=scrCurrentWeaponExt(sprite_index)
my_id.direction=dir-70-random(40)
my_id.speed=1+random(2)
my_id.ammo=ammo
sprite_index=sprPWalkUnarmed
}
}

my_id=instance_create(x,y,objPAttackSnap)
if objPlayer.sprite_index=sprPWalkBag or objPlayer.sprite_index=sprPAttackBag my_id.bag=1
my_id.maskindex=objPlayer.maskindex
my_id.maskon=1
my_id.image_angle=image_angle
with objPlayer {if object_index=objPlayerMouse or object_index=objPlayerController instance_destroy()}

instance_destroy()


}
}

/* */
/*  */
