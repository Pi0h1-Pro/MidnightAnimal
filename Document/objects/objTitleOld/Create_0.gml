dir = 0;
surf1 = surface_create(room_width, room_height);
surf2 = surface_create(room_width, room_height);

// Draw stars.
i = 0;
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}

i = 0;
repeat (138)
{
	mydir[i] = random(360);
	i += 1;
}

sxeasy_play(working_directory + "\\HorseSteppin.mp3");

sun = 1;
tree = 0;

alarm[0] = 180;
alarm[1] = 450;

// alarm[2]=1+random(100)

orange = merge_color(merge_color(c_orange, c_yellow, 0.2 + lengthdir_x(0.2, dir)), merge_color(c_orange, c_yellow, 0.2 + lengthdir_x(0.2, dir)), i * (1 / 138));
sea = 1;
seax1 = 0;
seax2 = 48;
index1 = 0;
index2 = 22;
repeat (48)
{
	myy = random(48);
	instance_create(random(room_width), room_height / 2 + random(48), objSeaGlimmer);
}

// disable for steam version
// global.steamon = 0

global.xbox = 0;
scrInitXboxButtons();
if (file_exists(working_directory + "\\xbox"))
{
	global.xbox = 1;
	dllinit();
}
global.mvol = 1;
global.svol = 1;
scrLoadVol();
wait = 0;
global.alienware = 0;
if (file_exists(working_directory + "\\alienware"))
{
	global.alienware = 1;
	scrAlienWareInit();
	scrAlienWarePink();
}
else
	global.alienware = 0;
global.controllertype = 1;
global.upkey = "W";
global.downkey = "S";
global.leftkey = "A";
global.rightkey = "D";
global.restartkey = "R";
scrLoadKeys();
global.particles = 1;
global.hud = 1;
global.maskload = 0;
coldir = 0;
x = room_width / 2;
y = room_height / 3 - 12;

// dir = random(10000)
repeats = 1;
global.shake = 0;
alt[0] = "NEW GAME";
scrLoadUnlocked();
alt[1] = "CONTINUE";
i = 0;
repeat (20)
{
	if (global.levels[i] == 1)
		i += 1;
}
if (i == 20)
	alt[1] = "SCENES";
i = 0;
alt[2] = "OPTIONS";
alt[3] = "QUIT GAME";
global.bonuslist = ds_list_create();
global.bonustime = 0;
global.newmasks = 0;
nextlevel = rmIntermission1;
level = 0;
select = 0;
rdir = 0;
global.paused = 0;

global.surf1 = surface_create(room_width, room_height + 64);
surface_set_target(global.surf1);
draw_clear_alpha(c_black, 0);
surface_alpha();
surface_reset_target();

global.surf2 = surface_create(640 * 3, 480 * 3);
surface_set_target(global.surf2);
draw_clear_alpha(c_black, 0);
surface_alpha();
surface_reset_target();

global.surf3 = surface_create(640 * 3, 480 * 3);
surface_set_target(global.surf3);
draw_clear_alpha(c_black, 0);
surface_alpha();
surface_reset_target();

c_amount = 0;
fade = 0;
volume = 1;
presstart = 0;
pressup = 0;
pressdown = 0;
global.controller = 0;
pindex = 0;
global.talked = 1;
global.i = 0;


// Create buildings.
repeat (10)
{
	my_id = instance_create(x, y, objPalmTree);
	with (my_id)
	{
		repeat (global.i * 45)
			amount *= 1.01;
	}
	global.i += 1;
}


global.surfaces = 1;
global.blood = 1;
if (file_exists(working_directory + "\\blood"))
	global.blood = 0;
if (file_exists(working_directory + "\\surfaces"))
	global.surfaces = 0;

global.surfacesprites = 0;
global.resetstory = 0;
global.comboflash = 0;
global.parttitle[0] = "Act I";
global.parttitle[1] = "The Good Soldier";
global.nextlevel = rmIntermission1;
global.sequence = rmSequence1;
global.revisit = 0;
global.maskon = 1;
global.maskindex = 0;
global.floorbloods = 0;
quit = 0;
scrLoadAchievements();
scrCheckLetters();
scrCheckGuns();
scrCheckMasks();

repeat (7)
	instance_create(random(room_width) + 32, 276 - random(20), objPalmTree);
repeat (5)
	instance_create(random(room_width), 0, objHouse);

