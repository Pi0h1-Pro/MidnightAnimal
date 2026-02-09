/// @description  Destroy ball.
if (sprite_index == sprBallBurst)
{
	instance_destroy();
	if (instance_exists(objPlayer))
		objPlayer.ball = 1;
}

