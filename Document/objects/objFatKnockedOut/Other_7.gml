if (sprite_index == sprEFatGetUp)
{
	my_id = instance_create(x, y, objEnemyFat);
	my_id.sprite_index = sprEFatWalk;
	instance_destroy();
}

my_id.angle = image_angle - 180;
my_id.direction = image_angle;
my_id.risen = 1;
my_id.startx = startx;
my_id.starty = starty;

with (my_id)
{
	scrMoveSolidOn();
	if (!place_free(x, y))
	{
		x = startx;
		y = starty;
	}
	scrMoveSolidOff();
}

