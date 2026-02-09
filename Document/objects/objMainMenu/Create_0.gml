/// @description  Old

// disable for steam version
// global.steamon=0
global.camera3D = true;

// Initialize Xbox Controls
global.xbox = 0;
scrInitXboxButtons();
if (file_exists(working_directory + "\\xbox"))
{
	global.xbox = 1;
	dllinit();
}

// Loads Volume.
global.mvol = 1;
global.svol = 1;
scrLoadVol();

// Used for general Commands
wait = 0;

// Colors for Alienware systems.
global.alienware = 0;
if (file_exists(working_directory + "\\alienware"))
{
	global.alienware = 1;
	scrAlienWareInit();
	scrAlienWarePink();
}
else
	global.alienware = 0;

// Loads Keys
global.controllertype = 1;
global.upkey = "W";
global.downkey = "S";
global.leftkey = "A";
global.rightkey = "D";
global.restartkey = "R";
scrLoadKeys();

// Loads saved Masks
global.maskload = 0;

// Determinated variable used for switching colours
coldir = 0;

// Sets the default x,y cordenates
x = room_width / 2;
y = room_height / 3 - 12;
dir = random(10000);
repeats = 1;

// Introduces Globa Variable ''Shake''
global.shake = 0;

// Alt is an array wich contains the options in the main menu

// Start Game
alt[0] = "START GAME";
scrLoadUnlocked();

// Will be ''Continue'' if the has not been completed: otherwise, level select
alt[1] = "CONTINUE";
i = 0;
repeat (20)
{
	if (global.levels[i] == 1)
		i += 1;
}
if (i == 20)
	alt[1] = "CHAPTERS";
i = 0;

// Options Screen
alt[2] = "OPTIONS";

// Exit game
alt[3] = "EXIT GAME";


global.bonuslist = ds_list_create();
global.bonustime = 0;
global.newmasks = 0;

// Modifies this to be whats on screen once ''start game'' is selected
nextlevel = rmTutorial;
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
alarm[0] = 45;
global.talked = 1;
global.i = 0;

// Generates ten palm trees.
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
global.parttitle[0] = "PART ONE.";
global.parttitle[1] = "PHONECALLS.";
global.nextlevel = rmTutorial;
global.sequence = rmSequence1;
global.revisit = 0;
global.maskon = 1;
global.maskindex = 0;
quit = 0;
scrLoadAchievements();
scrCheckLetters();
scrCheckGuns();
scrCheckMasks();

/// Initialise options.
// global.daytime = 0 // Checks to see if it's daytime; off by default.
// global.chroma = 0 // Chromatic aberration; off by default.
// global.togglebloom = 0 // Bloom; off by default.
global.canlockon = 1; // Target lock; on by default.
global.hud = 1; // Toggle HUD; on by default.

// global.inverted = 0 // Toggle inverted controls; off by default.
// global.screenfilter = 0 // Toggle screen filter; off by default.
global.drawFPS = 1; // Toggle drawing FPS in HUD; on by default.
global.deathshake = 0; // Default HUD warp on deaths.

// Gameplay variables.
global.done = 0; // Track level completion.
global.maxammo = 0; // Tracks maximum ammunition capacity of current weapon.
global.character = 0; // Check current character.
global.shake = 0; // Screenshake.

// Toggle Xbox controller.
// global.xbox = 0
presstart = 0;
pressup = 0;
pressdown = 0;

flicker = 0;
alarm[0] = 240 + random(240);

// Set default x and y coordinates in the room.
repeats = 1;

// Set menu options.
alt[0] = "ENTER";
alt[1] = "EXIT";

// Load data.
load_data();

level = 0;
select = 0;
rdir = 0;
c_amount = 0;
fade = 0;
volume = 1;
coldir = 0;
pindex = 0;

// In-game variables.
quit = 0;

global.CurrentSong = 0; // audio_play_sound(prufrock,0,1);
audio_sound_gain(global.CurrentSong, global.mvol, 0);

/// Local variables for visual elements in menu.
dir = 0;
wait = 0;

// Set alpha controllers for fade opacity.
alpha1 = 1;
alpha2 = 1;

animate = 0;
draw_bg = 0;
alarm[0] = 24;

/// Initialise controller.
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.5); // Set the "deadzone" for the axis
	gamepad_set_button_threshold(0, 0.1); // Set the "threshold" for the triggers
}

/// Create particle system for explosions.
global.explosion = part_system_create();
global.smoke = part_type_create();

global.dust = part_system_create();
global.dustParticles = part_type_create();

// Creating Particle System
global.fireSmoke = part_system_create();
part_system_depth(global.fireSmoke, -996);

/// Initialise alternate gamemodes.
global.gibfest = 0;
global.tgm = 0; // God mode.
global.rainbow = 0; // Rainbow bullets.

