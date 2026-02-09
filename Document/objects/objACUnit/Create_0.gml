/// @description  Randomise whether the AC unit is on or off.
sprite_index = choose(sprACUnitOn, sprACUnitOff);

if (sprite_index == sprACUnitOn)
	image_speed = 0.5;
else
{
	image_speed = 0;
	image_index = choose(0, 1);
}

