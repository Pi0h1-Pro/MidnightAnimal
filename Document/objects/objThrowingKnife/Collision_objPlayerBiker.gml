if (speed <= 0)
{
	other.ammo += 1;
	instance_destroy();
	sound_play(sndPickupWeapon);
}

