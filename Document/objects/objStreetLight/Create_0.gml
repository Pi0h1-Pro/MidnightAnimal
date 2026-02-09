on = 1;
image_speed = 0;
image_index = 1;
instance_create(x, y, objStreetLightBase);

image_xscale = 1.2;
image_yscale = 1.2;

if (on == 1)
{
	if (image_angle == 0)
	{
		my_id = instance_create(x, y + 40, objSAWhite);
		my_id.image_angle = image_angle;
		my_id.direction = my_id.image_angle;
	}
	
	if (image_angle == 90)
	{
		my_id = instance_create(x + 40, y, objSAWhite);
		my_id.image_angle = image_angle;
		my_id.direction = my_id.image_angle;
	}
	
	if (image_angle == 180)
	{
		my_id = instance_create(x, y - 40, objSAWhite);
		my_id.image_angle = image_angle;
		my_id.direction = my_id.image_angle;
	}
	
	if (image_angle == 270)
	{
		my_id = instance_create(x - 40, y, objSAWhite);
		my_id.image_angle = image_angle;
		my_id.direction = my_id.image_angle;
	}
}

