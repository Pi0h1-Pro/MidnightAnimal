if (image_speed > 0)
	exit;
scrMoveSolidOn();
if (!place_free(x, y))
{
	if (speed > 0)
	{
		move_outside_solid(direction - 180, 8);
	}
	else
	{
		if (place_free(x + lengthdir_x(7, direction - 180), y + lengthdir_y(7, direction - 180)))
		{
			dir = direction;
			if (sprite_index == sprEGangGetUp)
				sprite_index = sprEGangGetUpLean;
			if (sprite_index == sprEGetUp)
				sprite_index = sprEGetUpLean;
			if (sprite_index == sprPoliceGetUp)
				sprite_index = sprPoliceGetUpLean;
			direction = round(direction * (1 / 90)) * 90;
			image_angle = direction - 180;
			if (place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)))
			{
				direction = dir;
				if (sprite_index == sprEGangGetUpLean)
					sprite_index = sprEGangGetUp;
				if (sprite_index == sprEGetUpLean)
					sprite_index = sprEGetUp;
				if (sprite_index == sprPoliceGetUpLean)
					sprite_index = sprPoliceGetUp;
			}
		}
	}
	speed = 0;
}
else
{
	if (!place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)))
	{
		move_contact_solid(direction, 8);
		dir = direction;
		if (sprite_index == sprEGangGetUp)
			sprite_index = sprEGangGetUpLean;
		if (sprite_index == sprEGetUp)
			sprite_index = sprEGetUpLean;
		if (sprite_index == sprPoliceGetUp)
			sprite_index = sprPoliceGetUpLean;
		direction = round(direction * (1 / 90)) * 90;
		image_angle = direction - 180;
		if (place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)))
		{
			direction = dir;
			if (sprite_index == sprEGangGetUpLean)
				sprite_index = sprEGangGetUp;
			if (sprite_index == sprEGetUpLean)
				sprite_index = sprEGetUp;
			if (sprite_index == sprPoliceGetUpLean)
				sprite_index = sprPoliceGetUp;
		}
	}
}
scrMoveSolidOff();

/*
if speed = 0 {
    if reload > 0 reload -= 1
    else {
        image_speed = 0.25
    }
}

/*scrMoveSolidOn()

if sprite_index=sprEGetUpLean or sprite_index=sprPoliceGetUpLean {
mask_index=sprEGetUpLeanMask
if place_meeting(x,y,objBullet) {
sound_play(choose(sndHit,sndHit1,sndHit2,sndHit3))
sound_play(sndPunch)
global.shake=5
myx=x+lengthdir_x(8,image_angle)
myy=y+lengthdir_y(8,image_angle)

repeat (8) {
dir=random(360)
my_id=instance_create(myx+lengthdir_x(4,dir),myy+lengthdir_y(4,dir),objBigBlood)
my_id.direction=dir
my_id.speed=2+random(1)
my_id.friction=0.1
}

repeat (6) {
my_id=instance_create(argument0,argument1,objSplat)
my_id.direction=random(360)
my_id.speed=2+random(2)
}
repeat (5) {
my_id=instance_create(argument0,argument1,objSmudge)
my_id.direction=random(360)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
repeat(3) {
my_id=instance_create(argument0-12+random(24),argument1-12+random(24),objBigBlood)
}

my_id=instance_create(x,y-12,objScore)
my_id.text="+"+string((100)+100*global.factor)+"pts" 
global.myscore+=(100)+100*global.factor
global.boldscore=100*global.factor
global.killscore+=100
global.combo+=1
global.combotime=240
global.killx[global.kills]=x
global.killy[global.kills]=y
global.kills+=1
global.shake=7
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprEDeadLean
my_id.image_index=1+floor(random(5))
my_id.image_angle=angle
instance_destroy()
scrMoveSolidOff()
exit
}
if instance_exists(objPlayer) {
if objPlayer.sprite_index=sprPAttackClub or objPlayer.sprite_index=sprPAttackCrowbar or objPlayer.sprite_index=sprPAttackSledgeHammer or objPlayer.sprite_index=sprPAttackPan or objPlayer.sprite_index=sprPAttackMachete or objPlayer.sprite_index=sprPAttackPot or objPlayer.sprite_index=sprBoss2AttackCleaver or objPlayer.sprite_index=sprPAttackSledgeHammer or objPlayer.sprite_index=sprPAttackPot or objPlayer.sprite_index=sprPAttackMachete or objPlayer.sprite_index=sprPAttackPan or objPlayer.sprite_index=sprPigButcherAttack or objPlayer.sprite_index=sprPAttackBat or objPlayer.sprite_index=sprPAttackPipe or objPlayer.sprite_index=sprPAttackKnife or objPlayer.sprite_index=sprPAttackSword {
addx=lengthdir_x(12,objPlayer.dir)
addy=lengthdir_y(12,objPlayer.dir)
objPlayer.x+=addx
objPlayer.y+=addy
if place_meeting(x,y,objPlayer) {
sound_play(choose(sndHit,sndHit1,sndHit2,sndHit3))
sound_play(sndPunch)
myx=x+lengthdir_x(8,image_angle)
myy=y+lengthdir_y(8,image_angle)
repeat (8) {
dir=random(360)
my_id=instance_create(myx+lengthdir_x(4,dir),myy+lengthdir_y(4,dir),objBigBlood)
my_id.direction=dir
my_id.speed=2+random(1)
my_id.friction=0.1
}
my_id=instance_create(x,y-12,objScore)
my_id.text="+"+string((100)+100*global.factor)+"pts" 
global.myscore+=(100)+100*global.factor
global.boldscore=100*global.factor
global.killscore+=100
global.combo+=1
global.combotime=240
global.killx[global.kills]=x
global.killy[global.kills]=y
global.kills+=1
global.shake=7
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprEDeadWall
my_id.image_index=3+floor(random(6))
my_id.image_angle=angle
my_id.image_yscale=objPlayer.left
instance_destroy()
scrMoveSolidOff()
objPlayer.x-=addx
objPlayer.y-=addy
exit
}
objPlayer.x-=addx
objPlayer.y-=addy
}
}

mask_index=sprMask
}
if !place_free(x,y) {
if speed>0 move_outside_solid(direction-180,8) else {
if place_free(x+lengthdir_x(7,direction-180),y+lengthdir_y(7,direction-180)) {
dir=direction
if sprite_index=sprEFatFallen sprite_index=sprEGetUpLean 
//if sprite_index=sprPoliceGetUp sprite_index=sprPoliceGetUpLean
direction=round(direction*(1/90))*90 
if place_free(x+lengthdir_x(5,direction),y+lengthdir_y(5,direction)) {
direction=dir 
if sprite_index=sprEGetUpLean sprite_index=sprEGetUp 
if sprite_index=sprPoliceGetUpLean sprite_index=sprPoliceGetUp
}
}
}
speed=0
} else {
if !place_free(x+lengthdir_x(5,direction),y+lengthdir_y(5,direction)) {
move_contact_solid(direction,8) 
dir=direction
direction=round(direction*(1/90))*90 
if place_free(x+lengthdir_x(5,direction),y+lengthdir_y(5,direction)) {direction=dir
if sprite_index=sprEGetUpLean sprite_index=sprEGetUp 
if sprite_index=sprPoliceGetUpLean sprite_index=sprPoliceGetUp
}
} 
}
scrMoveSolidOff()
if speed=0 {
if reload>0 reload-=1 else {
image_speed=0.35
}
}

angle=direction

/* */
/*  */
