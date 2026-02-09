if (hurtindex == 15)
{
	if (image_index == 0)
	{
		scrFinishExecution(sprPWalkBrick);
		
		my_id = instance_create(x + lengthdir_x(11, image_angle), y + lengthdir_y(11, image_angle), objBloodPool);
		my_id = instance_create(x, y, objDeadBody);
		my_id.sprite_index = sprEBrickKill;
		my_id.image_index = 15;
		my_id.image_angle = image_angle;
	}
}

