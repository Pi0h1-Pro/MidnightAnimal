if (speed <= 0 && global.maskindex == 6)
{
	other.knives += 1;
	instance_destroy();
	sound_play(sndPickupWeapon);
}

