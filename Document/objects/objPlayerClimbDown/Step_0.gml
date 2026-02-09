image_angle = scrRotate(image_angle, 0, 6);

if (image_angle == 0)
{
	if (wait > 0)
		wait -= 1;
	else
	{
		if (sprite_index == sprNicoleWalk)
		{
			sprite_index = sprNicoleClimbDown;
			image_index = 0;
			sound_play(sndLadder);
		}
		objEffector.fade = 1;
		objEffector.next = 1;
		objEffector.nextroom = rmSecretSewer;
		if (image_index < 7)
			image_index += 0.2;
	}
}

