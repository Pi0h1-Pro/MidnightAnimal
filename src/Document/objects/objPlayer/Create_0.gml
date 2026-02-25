/// @description Initialise variables.

// Initialise characters.
init_character()

global.automatic = 1 // Automatic / semi-automatic fire rate.

// Shield.
shield = 0
ready = 0
fire_delay = 30
played = 0

// Floor controls.
save = 0
alarm[0] = 5

// Light amounts.
bamount = 1
amount = 0

// Ammunition.
grenades = 0
thrown = 0

// Variables for consuming things.
exhaled = 0
drink = 0

// Controls level of scope zoom with sniper rifles.
global.scopeZoom = 0

// Set global reload speed.
global.reloadspeed = 0.2

muzzle = 0
melee_damage = 0

// Auto-aim; off by default.
autoaim = 0

// Lock-on; temporary variable to check if the player is locked on.
lockon = 0

// Burst fire.
burststate = 0
firecount = 0
burstdelay = 1
pausedelay = 5
wburst = 0

dead = 0 
finish = 0
drop = 0
grenades = 6
berserk = 0

image_speed = 0
global.done = 0
legsprite = sprJohnLegs

execution = 0
mags = 0
nothing = 0
currentweapon = 0
dir = 0
movex = 0
movey = 0
move = 0
viewspeed = 0
myxspeed = 0
myyspeed = 0
myspeed = 0
reload = 5
light = 0
legdir = 0
legindex = 0
left = 1
ammo = 0
wait = 0
lastflame = -1234
walkdir = 0

// Variables for blink.
rollreload = 0
rollx = 0
rolly = 0
blink = 0

// Variables for teleporting.
teleport = false
teleporting = false
teleport_fade = true

// Variables for dual-wielding.
aimon = 1
armangle = 0
index = 0
addangle = 0
ready = 0

// Variables for charge shot.
global.charge_counter = 0
global.max_charge = 36
charged = 0

scrInitTurning()
last_sprite = sprite_index
character = global.character
release = 0
aim = 0
global.enemy = -1234
clear = 0
throwreload = 0
exhaled =0 

// Initialise scaling.
xfactor = 1
yfactor = 1
factor = 0

// Drop blood if health is less than maximum.
//if sprite_index = sprPWalkGunsmith alarm[3] = 20 + random(20)

// Dash variables.
DashTimer = 5;
d_dist = 15; // Dash distance. Raise to increase values.

// Create finite states.
state_machine_init();

state_create("Default",fsPlayerDefault);
state_create("Dash",fsPlayerDash);
state_init("Default");

///Zoom in variables.
base_width = __view_get( e__VW.WView, 0 ) / 2
base_height = __view_get( e__VW.HView, 0 ) / 2
view_zoom_level = 100
view_zoom_type = "none"
view_zoom_step = 0
view_zoom_change = 0.05
view_zoom_factor = 1
view_zoom_max = 32
view_zoom_min = 180

/// ABILITIES 3.
if sprite_index = pierretteWalkUnarmed and ready = 0 {
    sprite_index = pierretteReadyUp
    image_index = 0 
    image_speed = 0.2
    sound_ps(sndPickUpGeneric)
    sound_ps(sndRecharge)
    sound_ps(sndReadyUp)
    audio_emitter_gain(sndReadyUp, 0.5)
    ready = 1
}

/// Create particle systems.

steps = false
steps_duration = 40
steps_count = steps_duration
steps_rate = 120
steps_side = 1

//audio_listener_orientation(0, 1, 0, 0 , 0, 1)

// Smoke trail for gun.

// Steam.
boiling_steam = part_system_create();
steam = part_type_create();
part_system_depth(boiling_steam, -10);
part_type_scale(steam, 1, 1);
part_type_direction(steam, dir, dir, 0, 0);
part_type_shape(steam, pt_shape_smoke);
part_type_size(steam, 0.1, 0.3, -.01, 0);
part_type_colour2(steam, c_gray, c_white);
part_type_blend(steam, 0);
part_type_alpha2(steam, 0.5, 0.3);
part_type_life(steam, room_speed * 0.2, room_speed * 0.4);

// Flames.
fire = part_system_create();
part_system_depth(fire, -1003);
flame = part_type_create();
smoke = part_type_create();
dirc = 0;
part_type_colour2(flame, c_yellow, c_red);
part_type_direction(flame, dirc - 1, dirc + 1, 0, 0);
part_type_life(flame, 20, 30);
part_type_shape(flame, pt_shape_smoke);
part_type_speed(flame, 6, 12, 0, 0.25);
part_type_size(flame, 0.08, 0.12, 0.014, 0.003);
part_type_alpha3(flame, 1, 0.8, 0);
part_type_blend(flame, 1);

part_type_colour2(smoke, c_gray, c_black);
part_type_direction(smoke, dirc - 1, dirc + 1, 0, 0);
part_type_life(smoke, 30, 40);
part_type_shape(smoke, pt_shape_smoke);
part_type_speed(smoke, 5, 11, 0, 0.25);
part_type_size(smoke, 0.08, 0.12, 0.014, 0.003);
part_type_alpha3(smoke, 1, 0.8, 0);
part_type_blend(smoke, 0);

em = part_emitter_create(fire);


