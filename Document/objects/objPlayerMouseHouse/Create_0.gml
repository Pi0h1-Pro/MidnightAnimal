global.cocked = 0;
active = 1;
save = 0;
scrPlayerSpecialCase();

// Initiate Parker's berserk.
kills = 0;
berserk = 0;

if (global.xbox == 1)
	scrInitXboxButtons();
if (room == rmTutorial)
{
	global.maskindex = 0;
	global.maskon = 1;
	global.done = 1;
}

global.pigkill = 0;
image_speed = 0;
global.done = 0;

// SLOW TIME VARIABLES
isPause = false;
reloadTime = 0;
pauseTime = 0;

// tiger = 20

handgun = 0;
mags = 0;
nothing = 0;
currentweapon = 0;
dir = 0;
movex = 0;
movey = 0;
move = 0;
viewspeed = 0;
myxspeed = 0;
myyspeed = 0;
myspeed = 0;
reload = 20;
light = 0;
legdir = 0;
legindex = 0;
left = 1;
ammo = 0;
reload = 0;
wait = 0;
lastflame = -1234;

// ROLL VARIABLES
rollreload = 0;
rollx = 0;
rolly = 0;

// KNIVES FOR NICOLE
knives = 20;

// DUAL WIELD VARIABLES
aimon = 1;
armangle = 0;
index = 0;
addangle = 0;


energie = round(random(1));
cocked = 0;

scrInitThrowPos();
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
last_sprite = sprite_index;
throwindex = 0;
masksprite = -1;
maskindex = global.maskindex;
maskon = 0; // global.maskon
release = 0;
shieldwait = 0;
aim = 0;
global.enemy = -1234;
if (!variable_local_exists("clear"))
	clear = 0;
if (!place_free(x, y))
{
	x = global.executionx;
	y = global.executiony;
}

scrInitKeyboard();
scrInitTurning();


// MASK POWERS
if (global.maskon == 1)
{
	if (global.maskindex == 9)
		energie = 1;
	if (global.maskindex == 21)
		energie = 2;
	if (global.maskindex == 6)
		sprite_index = sprPWalkKnife;
	
	if (global.maskindex == 13)
	{
		if (!instance_exists(objLSD))
			instance_create(x, y, objLSD);
		if (!instance_exists(objLSDBlend))
			instance_create(x, y, objLSDBlend);
		sprite_index = sprPWalkUnarmedLSD;
	}
	
	// Magazine sizes.
	magsize = 0;
	
	if (sprite_index == sprPWalkSuppressedMG)
	{
		ammo = 30;
		mags = 2;
	}
	else
		global.magammo = 0;
	mags = 0;
	
	if (sprite_index == sprPWalkSilencedShotgun)
	{
		ammo = 6;
		mags = 24;
	}
	else
		global.magammo = 0;
	mags = 0;
	
	if (sprite_index == sprPWalkSniper)
	{
		ammo = 13;
		mags = 2;
	}
	else
		global.magammo = 0;
	mags = 0;
	
	if (global.maskindex == 19)
	{
		sprite_index = sprPWalkDWWhite;
		ammo = 32;
		mags = 100;
	}
	else
		global.magammo = 0;
	mags = 0;
}


throwreload = 0;

// XBOX COONTROLLER
if (global.controller == 1)
{
	instance_create(x, y, objPlayerController);
	instance_destroy();
}

// LSD shit.
h1 = 0;
h2 = 128;
walkdir = 0;

