if (image_angle == 0)
{
	i = 0;
	if (room == rmHouse1Upstairs || room == rmHouse1Downstairs)
	{
		repeat (14)
		{
			my_id = instance_create(x + i * 4, y + 4, objBlackDrape);
			i += 1;
		}
	}
	else
	{
		repeat (14)
		{
			my_id = instance_create(x + i * 4, y + 4, objPlasticDrape);
			i += 1;
		}
	}
}

if (image_angle == 270)
{
	i = 0;
	if (room == rmHouse1Upstairs || room == rmHouse1Downstairs)
	{
		repeat (14)
		{
			my_id = instance_create(x + i * 4, y + 4, objBlackDrape);
			my_id.image_angle = 90;
			i += 1;
		}
	}
	else
	{
		repeat (14)
		{
			my_id = instance_create(x + i * 4, y + 4, objPlasticDrape);
			my_id.image_angle = 90;
			i += 1;
		}
	}
}

