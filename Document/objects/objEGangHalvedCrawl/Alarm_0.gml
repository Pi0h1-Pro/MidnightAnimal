repeat (1 + random(3))
{
	my_id = instance_create(x + lengthdir_x(5, image_angle) - 4 + random(8), y + lengthdir_y(5, image_angle) - 4 + random(8), objBloodSquirt);
	my_id.image_angle = image_angle - 10 + random(20);
}

