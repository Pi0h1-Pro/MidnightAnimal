/// @description  End muzzle flash.

if (instance_exists(objPlayerLight))
{
	with (objPlayerLight)
	{
		instance_destroy();
	}
}

