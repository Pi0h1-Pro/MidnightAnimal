function scrPlayerAttackAuto() {
	if (objPlayer.sprite_index == sprPWalkBossgun
	// or objPlayer.sprite_index = sprPActivatePersona
	|| instance_exists(mnCharacterSelect))
		nothing = 1;
	else
	{
		if (reload <= 0)
		{
			if (ammo > 0 && !scrIsReloading(sprite_index))
				scrPlayerShootAuto();
			image_angle = 0;
		}
	}



}
