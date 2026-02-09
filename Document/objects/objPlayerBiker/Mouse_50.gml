if (global.xbox == 1)
	exit;
if (reload > 0)
	exit;
sprite_index = sprNicoleAttackCleaver;
image_index = 0;
image_speed = 0.5;
reload = 15;
sound_play(choose(sndSwing1, sndSwing2));

