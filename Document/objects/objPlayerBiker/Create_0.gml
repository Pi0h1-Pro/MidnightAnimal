if (global.xbox == 1)
	scrInitXboxButtons();

// SLOW TIME VARIABLES
isPause = false;
reloadTime = 0;
pauseTime = 0;
berserk = 0;

active = 1;
save = 0;
image_speed = 0;
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
knives = 10;
energie = 1;
ammo = 0;
mags = 0;
lastx = 0;
lasty = 0;
global.enemy = -1234;
if (!variable_local_exists("clear"))
	clear = 0;
aim = 0;
if (!place_free(x, y))
{
	x = global.executionx;
	y = global.executiony;
}

aimfar = 0;

