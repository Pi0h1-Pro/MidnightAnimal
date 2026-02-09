my_id = instance_create(x, y, objInspector);
my_id.angle = image_angle - 180;
my_id.startx = startx;
my_id.starty = starty;
with (my_id)
{
	if (!place_free(x, y))
	{
		x = startx;
		y = starty;
	}
}
instance_destroy();

