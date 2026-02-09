if (scrContactDetonator())
{
	instance_create(x, y, objGrenadeExplosion);
	instance_create(x, y, objTinyFire);
	instance_destroy();
}

