//				____________________________________________________________________________________
   #region		Basic Logic			
    #macro		GAMEW				global.game_width
	#macro		GAMEH				global.game_height
	#macro		SHAKE				global.shake	
	#macro		NOTHING				undefined
	#macro		LAST				-1
	#macro		ALL					all
	#macro		mousegui_x			device_mouse_x_to_gui(0)
	#macro		mousegui_y			device_mouse_y_to_gui(0)
	#macro		updateWindow		alarm[0] = (10)
	#macro		addDirOne			dir += (1*delta)
	#macro		addByTime			((current_time/1000) * 360)
	#macro		setRandomImageIndex image_index = floor(random(sprite_get_number(sprite_index)))
	#macro		increaseDir			addDirOne
	#macro		increaseDirLength	addByTime
	#macro		colorFadeAnim		0.5+lengthdir_x(0.5,(current_time/1000) * 60)
	#macro		colorFadeAnim2		0.5+lengthdir_x(0.5,((current_time/1000) * 60) *2)
	#macro		RSIGN				choose(-1,1) /* RSIGN = Random Sign*/
	#macro		OUTLINE_LOOP		var o_d = o_def; for (var i=0; i < 360; i+=(360/o_d))
	#macro		SLEEP				global.wait
	#macro		AWAKE				(SLEEP <= 0)
	#macro		EXIT_IF_SLEEP		if (SLEEP > 0) {exit;}
	#macro		GMLIVE_SETUP		/*if (live_call()) {return live_result;}*/
	#macro		SHOULD_PAUSE_ANIM	if ((GAMEPAUSED || SLEEP > 0) && !object_get_parent(objParentEffect)) {image_speed=0; exitIfPaused;}else{image_speed=1;}
	#macro		BASIC_SCRIPT_SETUP	GMLIVE_SETUP; EXIT_IF_SLEEP 
	#macro		BASIC_OBJECT_SETUP	GMLIVE_SETUP; SHOULD_PAUSE_ANIM; EXIT_IF_SLEEP
	#macro		BASIC_PLAYER_SETUP	GMLIVE_SETUP; SHOULD_PAUSE_ANIM
    #macro      this                self
    #macro      Input               global.input
    #macro      deltaTime           delta_time / 1000000 

#endregion		____________________________________________________________________________________
 #region		Game States			
	#macro		GAMEPAUSED			(global.isPaused)
	#macro		exitIfPaused		if (GAMEPAUSED) {exit;}
	#macro		exitIfNoPlayer		if !instance_exists(objPlayer) {exit;}
	#macro		exitIfNoDevMode		if (!isDevMode) {exit;}
	#macro		areaCleared			!(instance_exists(objEnemy) || instance_exists(objAresBoss) || instance_exists(objKnockedOut) || instance_exists(objMiscEnemy) || instance_exists(objEHideM16) || (instance_number(objEBullet) > 0))

#endregion		_________________________________________________________________6___________________
   #region		Game Modes			
	#macro		isDemo				(objGame.currentMode == "Demo")
	#macro		isDevMode			(objGame.currentMode == "Development")
	#macro		isXbox				(objGame.currentPlatform == "Xbox")
	#macro		isPlayStation		(objGame.currentPlatform == "PlayStation")
	#macro		isNintendo			(objGame.currentPlatform == "Nintendo")
	#macro		isConsole			(isXbox || isPlayStation || isNintendo)
	#macro		isPC				(!isConsole)
    #macro      isHardMode			(global.hardmode > 0) 

#endregion		
 //				¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯