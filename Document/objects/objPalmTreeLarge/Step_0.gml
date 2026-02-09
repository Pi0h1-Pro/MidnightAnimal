if (fadeOut && image_alpha > 0.3)
{
	image_alpha -= 0.1;
	if (image_alpha <= 0.3)
	{
		fadeOut = false;
		stopped = false;
		image_alpha = 0.3;
	}
}
else if (fadeIn && image_alpha < 1)
{
	image_alpha += 0.1;
	if (image_alpha >= 1)
	{
		fadeIn = false;
		stopped = false;
		image_alpha = 1;
	}
}

