instance_destroy();
instance_create(x, y, objWaterPuddle);
repeat (4)
	instance_create(x, y, objSteam);
if (!sound_isplaying(sndBoilingWater))
	sound_play(sndBoilingWater);

