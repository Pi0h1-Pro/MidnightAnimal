/// @description  Destroy icon.
icon = instance_nearest(x, y, iconExecution);
if (instance_exists(icon))
{
	with (icon)
		instance_destroy();
}

