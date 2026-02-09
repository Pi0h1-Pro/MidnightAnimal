if (!fadeOut && image_alpha > 0.3)
{
	fadeOut = true;
	fadeIn = false;
}

if (!fadeIn && image_alpha < 1)
{
	fadeIn = true;
	fadeOut = true;
}

