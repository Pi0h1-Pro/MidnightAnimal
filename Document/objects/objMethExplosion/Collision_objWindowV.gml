instance_create(x, y, objWindowExplode);
if (instance_exists(objLSD))
	sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
else
	sound_play(choose(sndGlass1, sndGlass2));
instance_destroy();

