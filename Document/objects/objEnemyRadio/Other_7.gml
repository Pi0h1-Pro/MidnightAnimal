update = 0;
if (sprite_index == sprERadioTalk)
{
	sprite_index = sprERadioWalk;
	update = 1;
}
if (sprite_index == sprERadioRoll)
{
	sprite_index = sprERadioWalk;
	update = 1;
}
if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

