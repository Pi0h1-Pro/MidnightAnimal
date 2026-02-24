if (live_call()) return live_result;
sprite_index = sprEmpty
angle = 0;
function live_call()
{
	return false;
}

initGlobalVars();
discAngle = irandom(360);
showTrackNameTimer = 512;
playbackX = global.game_width;
playbackY = global.game_height;
trackNameGoAwaySpeed = 10; // speed of the message going away
showTrackName = false;

// --------------------------------------

testMusic = function(songName = "DontTrip.ogg"){
	scrAudioInit();
	scrSetMusicVolume(0);
	scrMusicPlay("DontTrip.ogg");
}

setTestMusic = function(_s = "DontTrip.ogg") {
if (game_room == room) {testMusic(_s)}
}

// --------Initialize Level Data---------

function LevelData(number, cd, game, intro, part, player, title) constructor
{
	this.index = number;
    this.pretitle = string("SCENARIO {0}", number)
	
    if (this.pretitle == "SCENARIO 0")
        this.pretitle = "PROLOGUE";
	if (this.pretitle == "SCENARIO 16") {
		this.pretitle = "GAME OVER";
	}
	
    this.cd = cd;
    this.game = game;
    this.intro = intro;
    this.part = part;
    this.player = player;
	this.title = title;
}

levelsArray = array_create(0);

array_push(levelsArray,
    new LevelData(0,    sprCDs,             rmLevelWhiplash,        rmCutsceneWhiplash,     sprPart0,	"Pig Killer",				"Whiplash"),
    new LevelData(1,    sprCDOverturn,		rmLevelOverturn,		rmCutsceneOverturn,		sprPart1,   "Erick Ragno",			    "Overturn"),
    new LevelData(2,    sprCDNoService,		rmLevelNoService,		rmCutsceneNoService,	sprPart1,   "Ben Smith",				"No Service"),
    new LevelData(3,    sprCDSlither,	    rmLevelSlither,			rmCutsceneSlither,		sprPart1,   "Erick Ragno",				"Slither"),
    new LevelData(4,    sprCDRecording,		rmLevelRecorded,		rmCutsceneRecorded,		sprPart1,   "Ben Smith",				"Recording"),
    new LevelData(5,    sprCDTaint,			rmLevelTaint,			rmCutsceneAct2,			sprPart2,   "Erick Ragno\nBen Smith", 	"Tainted"),
    new LevelData(6,    sprCDRepaid,	    rmLevelRepaid,			rmCutsceneRepaid,		sprPart2,   "Erick Ragno\nBen Smith", 	"Repayment"),
    new LevelData(7,    sprCDFreaks,	    rmLevelFreakshow,		rmCutsceneFreakshow,	sprPart2,   "Erick Ragno\nBen Smith",	"Freakshow"),
    new LevelData(8,    sprCDDesolated,		rmLevelDesolated,		rmCutsceneDesolated,	sprPart2,   "Erick Ragno\nBen Smith",	"Desolation"),
    new LevelData(9,    sprCDBioAgent,		rmLevelBioAgent,		rmCutsceneAct3,			sprPart3,   "Erick Ragno", 				"Bio Agent"),
    new LevelData(10,   sprCDNoTalk,		rmLevelNoTalk,			rmCutsceneNoTalk,		sprPart3,   "Erick Ragno", 				"No Talk"),
    new LevelData(11,   sprCDExcruciation,	rmLevelExcruciation,	rmCutsceneExcruciation,	sprPart3,   "Erick Ragno", 				"Excruciating"),
    new LevelData(12,   sprCDBreakdown,		rmLevelBreakdown,		rmCutsceneBreakdown,	sprPart3,   "Erick Ragno", 				"Breakdown"),
    new LevelData(13,   sprCDSorrow,		rmLevelBloodlife,		rmCutsceneAct4,			sprPart4,   "Erick", 					"Sorrow"),
    new LevelData(14,   sprCDBloodlife,		rmLevelBloodlife,		rmCutsceneBloodlife,	sprPart4,   "Erick", 					"Bloodlife"),
	new LevelData(15,   sprCDDejaVu,		rmLevelDejaVu,			rmCutsceneDejaVu,		sprPart4,   "Erick",					"Déjà Vu"),
	new LevelData(16,   sprCDCollapse,		rmLevelCollapse,		rmLevelCollapse,		sprPart4,   "Erick", 					"Collapse")
);

getLevel = function(index) {
    return levelsArray[index + 1];
}

getLevels = function() {
    return levelsArray;
}

global.levelData = this.getLevel(-1);

// --------------------------------------

SLEEP = 0;
framerate = 60;
setFPS = function(_framerate = 60){
	//objGame.setFPS(60);
	show_debug_message("Changed framerate to "+string(framerate)+"fps")
	game_set_speed(_framerate,0);
	framerate = _framerate;
}

//instance_create(x,y,sound);
global.convo_index = 0;
SHAKE = 0;
GAMEW = 480;
GAMEH = 270;
appSurfaceResolution	= 8;
appSurfaceWidth			= GAMEW*appSurfaceResolution;
appSurfaceHeight		= GAMEH*appSurfaceResolution;
setToRestart = false;
isRestarting = false;
global.isPaused = false;

spawn_instance(x,y,root_Menu);

window_set_caption(gameTitle + " | Pi0h1.com");

resetGameSize = function() {
	globalvar game_w;	game_w	= objGame.game_width;
	globalvar game_h;	game_h	= objGame.game_height;
	globalvar win_w;	win_w	= objGame.window_width;
	globalvar win_h;	win_h	= objGame.window_height;
	window_set_size(win_w,win_h);
}

resetGameSize();
trueres=false;
event_user(2);
fullscreen = false;
fade_alpha = 1;
len = 2;
dir = 0;
savedMaskIndex = 0;

msg = "Hello World!\n\n\nYou're using Pi0h1.com's Quickstart\nMade in URUGUAY\n\n\nPress F11 for Fullscreen/Windowed\nPress SHIFT+ESC to Exit";

show_debug_overlay(isDebugging);

global.inputManager = new InputManager();

drawHud = true;
scoreBuffer = -1;
bonusListBuffer = -1;
savedBonusList = array_create(0);

cleanUp = function() {
    if (bonusListBuffer != -1)
        buffer_delete(bonusListBuffer);
    if (scoreBuffer != -1)
        buffer_delete(scoreBuffer);
    show_debug_message("Game has been closed, buffers cleaned up.")
}

global.displayMouseX = display_mouse_get_x();
global.displayMouseY = display_mouse_get_y();
window_mouse_set_locked(false);