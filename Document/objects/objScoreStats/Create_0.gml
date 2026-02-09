global.surf1 = surface_create(room_width, room_height);
surface_set_target(global.surf1);
draw_clear_alpha(c_black, 0);
surface_reset_target();

myx = 0;
rotation = 0;
textx = 0;
texty = 0;
wait = 30;
current = 0;

// alarm[0] = 300
creditx = 320;
credity = 18;
alpha = 0;
on = 1;
amount = 0;
factor = 0;
dir = random(360);
fade = 0;
c_amount = 0;
colordir = 0;
i = 0;
flash = 1;
sunalpha = 0;
sunshine = 0;
float = 0;
horizon = 0;
drawgrade = 0;
parscore = "/5000";

// dir = 180
dir2 = 0;
cdir = 0;
gradex = -10;
gradeon = 0;
alpha = 0;
housex = 0;
finalx = 500;
alarm[2] = 1 + random(100);

// Create mist.
instance_create(x, y, objCloud);

// Draw stars.
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}



if (global.barehanded == 1)
	SteamSetAchievement("ACH_THESE_ARE_MY_GUNS");
scrSaveAchievements();
scrCheckGuns();
if (global.xbox == 1)
	scrInitXboxButtons();
scrCountFlexibilityScore();
scrCountMobilityScore();
scrCheckLetters();
scrCheckUsedGuns();
scrCheckUsedMasks();
scrCheckUsedThrows();
scrCheckUsedKills();
SteamCheckFinal();
song = working_directory + "\\Daisuke.mp3";

global.myscore = 0;
bonus[0] = global.killscore;
if (global.barehanded == 1)
{
	audacity = global.boldscore * 2;
}
else
	audacity = global.boldscore;
bonus[1] = audacity;
bonus[2] = global.comboscore;
bonus[3] = floor((18000 - global.time) * 0.5);
if (bonus[3] < 0)
	bonus[3] = 0;
bonus[4] = global.flexibilityscore;
bonus[5] = global.mobilityscore;
bonus[6] = global.specialscore;
i = 0;
fastforward = 0;

repeat (6)
{
	drawbonus[i] = 0;
	temp[i] = 0;
	global.myscore += bonus[i];
	i += 1;
}

// SCORES
global.levelscore[global.currentlevel] = global.myscore;
parscore = "/" + string(round((scrGetMaxpoints() * (7 / 15)) * (1 / 500)) * 500);


category[0] = "LETHALITY:";
category[1] = "AUDACITY:";
category[2] = "FLUIDITY:";
category[3] = "EFFICIENCY:";
category[4] = "FLEXIBILITY:";
category[5] = "MOBILITY:";
category[6] = "SPECIAL:";
global.totalscore += global.myscore;

// UNLOCK WEAPONS
global.newguns = 0;
allguns = 0;
i = 0;

while (global.newgun[i] == 1 && i < 15)
{
	i += 1;
}
if (global.totalscore > (i + 1) * 50000 && global.totalscore - global.myscore < (i + 1) * 50000)
	global.newguns = 1;
i += 1;
if (global.totalscore > (i + 1) * 50000 && global.totalscore - global.myscore < (i + 1) * 50000)
	global.newguns = 2;
else
	i -= 1;
nextgun = (i + 1) * 50000;
leftgun = global.totalscore;

i = 0;
while (global.newgun[i] == 1 && i < 16)
{
	i += 1;
}
if (i == 15 && global.newguns == 2)
	global.newguns = 1;
if (i == 16)
{
	allguns = 1;
	global.newguns = 0;
}

global.currentmask = 0;
if (global.sequence == rmSequence1)
	global.currentmask = 1;
if (global.sequence == rmSequence2)
	global.currentmask = 2;
if (global.sequence == rmSequence3)
	global.currentmask = 3;
if (global.sequence == rmSequence4)
	global.currentmask = 4;
if (global.sequence == rmSequence5)
	global.currentmask = 5;
if (global.sequence == rmSequence6)
	global.currentmask = 6;
if (global.sequence == rmSequence7)
	global.currentmask = 7;
if (global.sequence == rmSequence8)
	global.currentmask = 8;
if (global.sequence == rmSequence9)
	global.currentmask = 9;
if (global.sequence == rmSequence10)
	global.currentmask = 10;
if (global.sequence == rmSequence11)
	global.currentmask = 11;
if (global.sequence == rmSequence12)
	global.currentmask = 12;
if (global.sequence == rmSequence13)
	global.currentmask = 13;
if (global.sequence == rmSequence14)
	global.currentmask = 14;
if (global.sequence == rmMCBar)
	global.currentmask = 15;
if (global.sequence == rmMCSequence2)
	global.currentmask = 16;
if (global.sequence == rmMCSequence3)
	global.currentmask = 17;



/*- Combos = Combo Bonus
-Total time = Time Bonus
-Weapons used = Flexibility Bonus
-Distance between kills = Mobility Bonus
-Only melee bonus = Melee Bonus
-Shots fired during combat = Artillery Bonus
-People who see you kill someone = Boldness Bonus */

if (global.xbox == 1)
	scrInitXboxButtons();

// if surface_exists(global.surf1) surface_free(global.surf1)
// global.surf1 = surface_create(480, 256)
bonuses = "";

repeat (ds_list_size(global.bonuslist))
{
	bonuses += ds_list_find_value(global.bonuslist, i) + "#";
	i += 1;
}

level = global.title;
time = global.time;
timer = global.timer;
myscore = global.myscore;

type = "MASS MURDERER";
maxpoints = scrGetMaxpoints();
skillpoints = global.myscore;

grade = "F";
if (skillpoints < maxpoints * (1 / 16))
	grade = "F-";
if (skillpoints > maxpoints * (2 / 16))
	grade = "F";
if (skillpoints > maxpoints * (3 / 16))
	grade = "F+";
if (skillpoints > maxpoints * (4 / 16))
	grade = "D-";
if (skillpoints > maxpoints * (5 / 16))
	grade = "D";
if (skillpoints > maxpoints * (6 / 16))
	grade = "D+";
if (skillpoints > maxpoints * (7 / 16))
	grade = "C-";
if (skillpoints > maxpoints * (8 / 16))
	grade = "C";
if (skillpoints > maxpoints * (9 / 16))
	grade = "C+";
if (skillpoints > maxpoints * (10 / 16))
	grade = "B-";
if (skillpoints > maxpoints * (11 / 16))
	grade = "B";
if (skillpoints > maxpoints * (12 / 16))
	grade = "B+";
if (skillpoints > maxpoints * (13 / 16))
	grade = "A-";
if (skillpoints > maxpoints * (14 / 16))
	grade = "A";
if (skillpoints > maxpoints * (15 / 16))
	grade = "A+";
if (skillpoints > maxpoints * (16 / 16))
	grade = "S";


global.currentlevel = scrGetCurrentLevel();
lastgrade = grade;

if (global.grade[global.currentlevel - 1] < scrGradeToNumber(grade))
	global.grade[global.currentlevel - 1] = scrGradeToNumber(grade);
if (global.myscore > global.highscore[global.currentlevel - 1])
	global.highscore[global.currentlevel - 1] = global.myscore;
highscore = global.highscore[global.currentlevel - 1];
global.lastgrade = scrGradeToNumber(grade);


if (string_count("exposure", string_lower(bonuses)) > 6)
	type = "EXHIBITIONIST";
if (string_count("pressure", string_lower(bonuses)) > 3)
	type = "IMPROVISER";
if (string_count("sharp", string_lower(bonuses)) > 2)
	type = "MARKSMAN";
if (string_count("combo", string_lower(bonuses)) > 5)
	type = "SPREE KILLER";
if (string_count("sneaky", string_lower(bonuses)) > 1)
	type = "ASSASSIN";
if (string_count("projectile", string_lower(bonuses)) > 1)
	type = "PITCHER";
if (string_count("door", string_lower(bonuses)) > 4)
	type = "DOOR MAN";
if (string_count("mercy", string_lower(bonuses)) > 2)
	type = "PACIFIST";
if (string_count("7x", string_lower(bonuses)) > 0 || string_count("6x", string_lower(bonuses)) > 0 || string_count("5x", string_lower(bonuses)) > 0 || string_count("4x", string_lower(bonuses)) > 0)
	type = "HITMAN";
if (string_count("10x", string_lower(bonuses)) > 0 || string_count("8x", string_lower(bonuses)) > 0 || string_count("9x", string_lower(bonuses)) > 0 || string_count("11x", string_lower(bonuses)) > 0)
	type = "SPECIALIST";
if (string_count("12x", string_lower(bonuses)) > 0 || string_count("13x", string_lower(bonuses)) > 0 || string_count("14x", string_lower(bonuses)) > 0 || string_count("15x", string_lower(bonuses)) > 0)
	type = "PROFESSIONAL";
if (string_count("execution", string_lower(bonuses)) > 4)
	type = "EXECUTIONER";
if (string_count("execution", string_lower(bonuses)) > 10)
	type = "SADIST";
if (string_count("sharp", string_lower(bonuses)) > 6)
	type = "PACIFIST";
if (string_count("exposure", string_lower(bonuses)) == 0)
	type = "GHOST";

/* */
/*  */
