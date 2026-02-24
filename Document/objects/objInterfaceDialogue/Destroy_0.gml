
if instance_exists(objCutsceneProtagonist) {
	with (objCutsceneProtagonist) {
		sound.play(sndImpactHit);
		sound.play(sndImpactSquish);
		image_index = 0;
		sprite_index = sprPlayerCutsceneDie;
	}
}

if instance_exists(objCutsceneGrimReaper) {
	objCutsceneGrimReaper.move=true;
}