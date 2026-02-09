/// @description  Destroy mine.
if (index == 8)
{
	with (other)
	{
		// Create explosion.
		instance_create(x, y, objGrenadeExplosion);
		instance_destroy();
	}
}

