/// @description  Decrease laser width and destroy when too thin.
width *= 0.9;
width -= 0.4;
if (width <= 0)
{
	instance_destroy();
}

