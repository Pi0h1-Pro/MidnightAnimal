if (sprite_index == sprEGangIdlePee)
{
	if (round(random(5)) == 2)
		sprite_index = sprEGangIdlePeeStop;
}
if (sprite_index == sprEGangIdlePeeStop)
{
	sprite_index = sprEGangIdlePee;
}

