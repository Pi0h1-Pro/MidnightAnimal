if (image_index == 1)
{
	my_id = instance_create(x, y, objBrokenBottle);
	instance_destroy();
	if (instance_exists(objLSD))
		sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
	else
		sound_play(choose(sndGlass1, sndGlass2));
	exit;
}
move_bounce_all(0);
speed *= 0.3;
sound_play(sndHitWall);
bounce = 1;

