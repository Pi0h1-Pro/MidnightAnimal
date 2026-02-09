if (energie <= 0)
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = bottom;
	my_id.image_index = 3;
	
	scrFinishExecution(sprPWalkKnife);
}

