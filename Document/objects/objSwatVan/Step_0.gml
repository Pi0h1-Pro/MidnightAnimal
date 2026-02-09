if (global.done == 1)
{
	if (spawn == 0)
	{
		my_id = instance_create(168, 208, objSwat);
		my_id.direction = 180;
		my_id.diradd = 1;
		my_id = instance_create(352, 120, objSwat);
		my_id.direction = 0;
		my_id.diradd = -1;
		my_id = instance_create(690, 256, objSwat);
		my_id.direction = 0;
		my_id.diradd = -1;
		my_id = instance_create(344, 528, objSwat);
		my_id.direction = 90;
		my_id.diradd = -1;
		my_id = instance_create(872, 248, objSwat);
		my_id.direction = 90;
		my_id.diradd = 1;
		visible = 1;
		solid = 1;
		spawn = 1;
		
		with (objCopCar)
		{
			visible = 1;
			solid = 1;
		}
		scrCheckpoint();
	}
}

