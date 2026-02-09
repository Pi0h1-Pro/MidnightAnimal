colordir = 0;
i = 0;
alarm[2] = 1 + random(100);
scorex = 160;
ammox = -160;
combox = -160;

// Draw stars.
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}

sunalpha = 0;
sunshine = 0;
float = 0;
horizon = 0;
instance_create(x, y, objCloud);

// scrCreateBonusList()
// global.title="DECADENCE"�
if (global.xbox == 1)
	scrInitXboxButtons();
if (surface_exists(global.surf1))
	surface_free(global.surf1);
global.surf1 = surface_create(480, 256);
song = working_directory + "\\Rust.mp3";
bonuses = "";
i = 0;
repeat (ds_list_size(global.bonuslist))
{
	bonuses += ds_list_find_value(global.bonuslist, i) + "#";
	i += 1;
}
parscore = "/5000pts";
current = 0;
dir = 180;
dir2 = 0;
cdir = 0;
gradex = -10;
gradeon = 0;
alpha = 0;
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
i = 0;
housex = 0;

dir = random(360);
factor = 0;
fade = 0;
c_amount = 0;

