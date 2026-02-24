if (room == rmLevelBreakdownEscape) {
	instance_create_depth(x,y,0,objActiveCopCars);
}

if instance_exists(objBossClown) {
	audio_play_sound(sndLaugh, 0, false);
}

if (room == rmOutroWhiplash) {
	if instance_exists(objErickArcade) {
		with objErickArcade {
			image_speed = 0.12;
		}
	}
}

if (room == rmCutsceneDejaVu) {
	if (global.convo_index<2) {
		instance_create_layer(x,y,"cameraFlash",objCameraFlash);
	}
}
if (room == rmLevelBloodlifeUpstairs) {
	if (global.convo_index == 0) {
		if instance_exists(objAresBoss) {
			objAresBoss.image_index = 0;
			objAresBoss.image_speed = 0.2;
			objAresBoss.sprite_index = sprAresRemote;
		}
	}
}

if (room == rmLevelNoServiceUpstairs)
{
    global.done = 1;
}

if (room == rmOutroBreakdown) {
	global.talked = 1;
}

if (room == rmLevelRecordedUpstairs)
{
	if instance_exists(objPlayer) && (objPlayer.sprite_index == sprBenWalkChainsaw || objPlayer.sprite_index == sprBenAttackChainsaw)
	{
		my_id = spawn_instance(objPlayer.x, objPlayer.y, objPoliceHat);
		my_id.direction = irandom(360);
		my_id.sprite_index = sprWeapons;
		my_id.image_index = 38;
	    my_id.speed = 1.5 + random(1);
		with objPlayer {
			sprite_index = sprBenWalkUnarmed;
		}
	}
}


if (room == rmCutsceneRepaid)
{
	if instance_exists(objPlayer) && (objPlayer.sprite_index == sprPWalkPot)
	{
		my_id = spawn_instance(objPlayer.x, objPlayer.y, objPoliceHat);
		my_id.direction = irandom(360);
		my_id.sprite_index = sprWeapons;
		my_id.image_index = 24;
	    my_id.speed = 1.5 + random(1);
		with objPlayer {
			sprite_index = sprPWalkUnarmed;
		}
	}
}

global.convo_index+=1;

if (room == rmLevelWhiplashUpstairs) {
	if (global.convo_index == 2) {
		if instance_exists(objTutorialRichard) {
			if !objTutorialRichard.hasShot {
				objTutorialRichard.image_index = 1;
			}
		}
	}
}


if (room == rmLevelBreakdownEscape) {
	with objPlayerVanEscape {
		alarm[1] = 10;
	}	
}

if (room == rmOutroDesolated) {
	if instance_exists(objBenFollow) {
		with (objBenFollow) {
			spawn_instance(x,y,objBenUseCamera)
			instance_destroy();
		}
	}
}

if (room == rmLevelBloodlifeUpstairs) {
	if instance_exists(objAresBoss) {
		objAresBoss.currentState = BossState.MOVING;
	}
}


// temporary solution
if (room == rmLevelBreakdownEscape) {
	if instance_exists(objHelicopter) {
		if (objHelicopter.stage == 2){
			with (objCopCarSpawner) {
			endLevel();
			}
		}
	}
}