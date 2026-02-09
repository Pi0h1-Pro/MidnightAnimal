if (sprite_index == sprEFatGetUp)
{
	my_id = instance_create(x, y, objEnemyFat);
	my_id.sprite_index = sprEFatWalk;
	instance_destroy();
}

my_id.direction = image_angle;
my_id.risen = 1;
my_id.enemyx = enemyx;
my_id.enemyy = enemyy;
with (my_id)
{
	scrMoveSolidOn();
	if (!place_free(x, y))
	{
		x = enemyx;
		y = enemyy;
	}
	scrMoveSolidOff();
}

