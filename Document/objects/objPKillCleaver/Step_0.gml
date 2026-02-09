if (hurtindex == 11)
{
	if (image_index == 0)
	{
		scrFinishExecution(sprPWalkCleaver);
		
		my_id = instance_create(x + lengthdir_x(11, image_angle), y + lengthdir_y(11, image_angle), objBloodPool);
		
		my_id = instance_create(x, y, objDeadBody);
		my_id.sprite_index = bottom;
		my_id.image_index = 11;
		my_id.image_angle = image_angle;
		instance_destroy();
	}
}

