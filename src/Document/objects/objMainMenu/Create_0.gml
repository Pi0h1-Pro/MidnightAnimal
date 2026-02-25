/// @description Initialise options.
//global.daytime = 0 // Checks to see if it's daytime; off by default.
//global.chroma = 0 // Chromatic aberration; off by default.
//global.togglebloom = 0 // Bloom; off by default.
global.canlockon = 1 //Target lock; on by default.
global.hud = 1 // Toggle HUD; on by default.
//global.inverted = 0 // Toggle inverted controls; off by default.
//global.screenfilter = 0 // Toggle screen filter; off by default.
global.drawFPS = 1 // Toggle drawing FPS in HUD; on by default.
global.deathshake = 0 // Default HUD warp on deaths.

// Gameplay variables.
global.done = 0; // Track level completion.
global.maxammo = 0 // Tracks maximum ammunition capacity of current weapon.
global.character = 0 // Check current character.
global.shake = 0 // Screenshake.

//Toggle Xbox controller.
//global.xbox = 0
presstart = 0
pressup = 0
pressdown = 0

flicker = 0
alarm[0] = 240 + random(240)

//Set default x and y coordinates in the room.
repeats = 1

//Set menu options.
alt[0] = "ENTER"
alt[1] = "EXIT"

// Load data.
load_data()

level = 0
select = 0
rdir = 0
c_amount = 0
fade = 0
volume = 1
coldir = 0
pindex = 0

// In-game variables.
quit = 0

global.CurrentSong=0//audio_play_sound(prufrock,0,1);
audio_sound_gain(global.CurrentSong, global.mvol, 0);

///Local variables for visual elements in menu.
dir = 0
wait = 0
// Set alpha controllers for fade opacity.
alpha1=1
alpha2=1

animate = 0
draw_bg = 0
alarm[0] = 24

/// Initialise controller.
if gamepad_is_connected(0) {
    gamepad_set_axis_deadzone(0, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(0, 0.1);    // Set the "threshold" for the triggers
}

///Create particle system for explosions.
global.explosion = part_system_create()
global.smoke = part_type_create()

global.dust = part_system_create()
global.dustParticles = part_type_create()

//Creating Particle System
global.fireSmoke = part_system_create();
part_system_depth(global.fireSmoke, -996);

/// Initialise alternate gamemodes.
global.gibfest = 0
global.tgm = 0 // God mode.
global.rainbow = 0 // Rainbow bullets.

