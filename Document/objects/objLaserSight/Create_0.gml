priTarget = ds_priority_create();
if (instance_exists(objPlayer))
{
	fxBeam = beam_create(2, objPlayer.x, objPlayer.y, objPlayer.x, objPlayer.y);
	fxBeamHot = beam_create(1, objPlayer.x, objPlayer.y, objPlayer.x, objPlayer.y);
}

