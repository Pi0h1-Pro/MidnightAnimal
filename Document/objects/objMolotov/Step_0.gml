dist += speed;
if (!place_free(x, y) || speed <= 3 || dist > limit)
{
	if (place_meeting(x, y, objVan))
		exit;
	x -= hspeed;
	y -= vspeed;
	instance_create(x, y, objBottleExplosion);
	instance_destroy();
	if (instance_exists(objLSD))
		sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
	else
		sound_play(choose(sndGlass1, sndGlass2));
	sound_play(sndMolotov);
}

