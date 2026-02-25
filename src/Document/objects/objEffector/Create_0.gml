/// @description Initalise variables.
// Create shader effects.
//lens_define(0.1, 0, 1, 4, 0.07)
//lens_enable()

init_music()

// Create visual noise.
scrInitNoise()

// Get style ranks for combos.
scrGetStyleRank()

width = display_get_width()
height = display_get_height()

// Determine the mouse position in the room.
global.mousex = (display_mouse_get_x() - width * 0.5) * (__view_get( e__VW.WView, 0 ) / width)
global.mousey = (display_mouse_get_y() - height * 0.5) * (__view_get( e__VW.HView, 0 ) / height)

lastsprite = -1234
cursor = -1234
global.enemy = -124123
global.loaded = 0
global.dir = 0
global.active = 1
global.dist_detection = 320

// HUD effects.
screenzoom=1
chroma=0
global.screeneffect = 0
global.blur = 0

healthflash = 0
hudflash = 0
showinfo = 1
cursoralpha = 0.5
lastbrus = 0
brus = 0
laststatic = 0
staticfx = 0

// Flashbang effects.
flashalpha = 0

// Screen flash.
whitealpha = 0
blackalpha = 0

// Letterboxinig.
blackx = 5
letterbox = false

// Elements.
text_interact = ""
alpha = 1
coldir = 0
amount = 0
fade = 0
my_y = 0
restart = 0
update = 0
dir = 0
nextroom = room_next(room)
blink=0
halpha = 0
bamount = 0
coldir = 0
amount = 0
fade = 0
my_y = 0
restart = 0
update = 0
ammoy = -32
next = 0
action = 0
wait = 0    
nextroom = room_next(room)
index = 0
teleport_angle = random(360)
scorex=160
shield_alpha = 0
hitalpha = 0
shelded = false

// Stabilise the view. 
vlastx = __view_get( e__VW.XView, 0 )
vlasty = __view_get( e__VW.YView, 0 )
gridon = 0

// If there are enemies in the room, initialise pathfinding.
scrInitPathFinding()

// Visuals.
coldir = 0
scorex = 160
ammox = -160
gunx = -160
combox = 160
sprite = -1234
kills = 0
killamount = 0
drawrestart = 0
text_y = 0
scratch = 0
arrow_index = 0

// Debug
inputstring = "";
input = 0;
returnvar=0;
DrawGrid=false;

