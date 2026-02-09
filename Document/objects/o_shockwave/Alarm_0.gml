// all variables for this object are initialized with a script with the same name as the object
if (radius < targetradius)
{
	// increase the radius if it is less than target radius
	alarm[0] = update_speed;
	
	// slow down the shockwave over time
	sp *= .99;
	image_angle += spin;
	radius += targetradius * sp;
}
else
{
	// destroy when max radius is reached
	instance_destroy();
}

