if (instance_exists(objPlayer))
{
	if (image_index > 0 || point_distance(x, y, objPlayer.x, objPlayer.y) < 40)
	{
		if (image_index < 6)
			image_index += 0.25;
	}
}

