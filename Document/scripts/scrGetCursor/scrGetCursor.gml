function scrGetCursor() {
	if (!instance_exists(objPlayer))
		exit;

	// Shotguns.
	if (objPlayer.sprite_index == sprPWalk1887 || objPlayer.sprite_index == sprPAttack1887
		|| objPlayer.sprite_index == sprPWalkSawedOff || objPlayer.sprite_index == sprPAttackSawedOff
		|| objPlayer.sprite_index == sprPWalkIthaca || objPlayer.sprite_index == sprPAttackIthaca
		|| objPlayer.sprite_index == sprPAttackAutoShotgun || objPlayer.sprite_index == sprPWalkAutoShotgun
		|| objPlayer.sprite_index == sprPAttackKSG || objPlayer.sprite_index == sprPWalkKSG || objPlayer.sprite_index == sprPReloadKSG
		|| objPlayer.sprite_index == sprPAttackDoubleBarrel || objPlayer.sprite_index == sprPWalkDoubleBarrel || objPlayer.sprite_index == sprPTurnDoubleBarrel
		|| objPlayer.sprite_index == sprPAttackShotgun || objPlayer.sprite_index == sprPWalkShotgun || objPlayer.sprite_index == sprPReloadShotgun || objPlayer.sprite_index == sprPTurnShotgun
		|| objPlayer.sprite_index == sprPAttackSilencedShotgun || objPlayer.sprite_index == sprPWalkSilencedShotgun || objPlayer.sprite_index == sprPReloadSilencedShotgun)
		cursor = sprCursorShotgun; // Special weapons.
	else if (objPlayer.sprite_index == sprPAttackFlamethrower || objPlayer.sprite_index == sprPWalkFlamethrower
		|| objPlayer.sprite_index == sprPAttackFlareGun || objPlayer.sprite_index == sprPWalkFlareGun
		|| objPlayer.sprite_index == sprPAttackMGL || objPlayer.sprite_index == sprPWalkMGL
		|| objPlayer.sprite_index == sprPAttackM79 || objPlayer.sprite_index == sprPWalkM79
		|| objPlayer.sprite_index == sprPThrow || objPlayer.sprite_index == sprPWalkGrenade
		|| objPlayer.sprite_index == sprPAttackMolotov || objPlayer.sprite_index == sprPWalkMolotov
		|| objPlayer.sprite_index == sprPAttackMultiplas || objPlayer.sprite_index == sprPWalkMultiplas
		|| objPlayer.sprite_index == sprPAttackDisruptor || objPlayer.sprite_index == sprPWalkDisruptor)
		cursor = sprCursorProjectile; // Rifles.
	else if (objPlayer.sprite_index == sprPAttackAK || objPlayer.sprite_index == sprPWalkAK || objPlayer.sprite_index == sprPTurnAK
		|| objPlayer.sprite_index == sprPAttackBow || objPlayer.sprite_index == sprPWalkBow
		|| objPlayer.sprite_index == sprPAttackCrossbow || objPlayer.sprite_index == sprPWalkCrossbow || objPlayer.sprite_index == sprPTurnCrossbow
		|| objPlayer.sprite_index == sprPAttackFAL || objPlayer.sprite_index == sprPWalkFAL
		|| objPlayer.sprite_index == sprPAttackLMG || objPlayer.sprite_index == sprPWalkLMG
		|| objPlayer.sprite_index == sprPAttackM16 || objPlayer.sprite_index == sprPWalkM16
		|| objPlayer.sprite_index == sprPAttackGarand || objPlayer.sprite_index == sprPWalkGarand
		|| objPlayer.sprite_index == sprPAttackHK417 || objPlayer.sprite_index == sprPWalkHK417 || objPlayer.sprite_index == sprPTurnHK417
		|| objPlayer.sprite_index == sprPAttackPatriot || objPlayer.sprite_index == sprPWalkPatriot || objPlayer.sprite_index == sprPTurnPatriot
		|| objPlayer.sprite_index == sprPAttackSniper || objPlayer.sprite_index == sprPWalkSniper
		|| objPlayer.sprite_index == sprPAttackWA2000 || objPlayer.sprite_index == sprPWalkWA2000
		|| objPlayer.sprite_index == sprPAttackSuppressedMG || objPlayer.sprite_index == sprPWalkSuppressedMG
		|| objPlayer.sprite_index == sprPAttackThompson || objPlayer.sprite_index == sprPWalkThompson || objPlayer.sprite_index == sprPTurnThompson)
		cursor = sprCursorRifle; // Submachine guns.
	else if (objPlayer.sprite_index == sprPAttackFMG || objPlayer.sprite_index == sprPWalkFMG
		|| objPlayer.sprite_index == sprPAttackFAMAE || objPlayer.sprite_index == sprPWalkFAMAE
		|| objPlayer.sprite_index == sprPAttackNailgun || objPlayer.sprite_index == sprPWalkNailGun
		|| objPlayer.sprite_index == sprPAttackMP5 || objPlayer.sprite_index == sprPWalkMP5 || objPlayer.sprite_index == sprPTurnMP5
		|| objPlayer.sprite_index == sprPAttackUzi || objPlayer.sprite_index == sprPWalkUzi
		|| objPlayer.sprite_index == sprPAttackP90 || objPlayer.sprite_index == sprPWalkP90
		|| objPlayer.sprite_index == sprPAttackScorpion || objPlayer.sprite_index == sprPWalkScorpion
		|| objPlayer.sprite_index == sprPAttackIngram || objPlayer.sprite_index == sprPWalkIngram
		|| global.character == 2)
		cursor = sprCursorSMG; // Handguns.
	else if (objPlayer.sprite_index == sprPAttackAJM || objPlayer.sprite_index == sprPWalkAJM
		|| objPlayer.sprite_index == sprPAttackHandgun || objPlayer.sprite_index == sprPWalkHandgun
		|| objPlayer.sprite_index == sprPAttackDesertEagle || objPlayer.sprite_index == sprPWalkDesertEagle || objPlayer.sprite_index == sprPTurnDesertEagle
		|| objPlayer.sprite_index == sprPAttackRealizer || objPlayer.sprite_index == sprPWalkRealizer
		|| objPlayer.sprite_index == sprPAttackMagnum || objPlayer.sprite_index == sprPWalkMagnum // or objPlayer.sprite_index = sprPTurnMagnum
	// or objPlayer.sprite_index = sprPAttackSAA or objPlayer.sprite_index = sprPWalkSAA
	|| objPlayer.sprite_index == sprPAttackMauser || objPlayer.sprite_index == sprPWalkMauser
		|| objPlayer.sprite_index == sprPAttackSilencer || objPlayer.sprite_index == sprPWalkSilencer
		|| global.character == 3)
		cursor = sprCursorPistol;
	else
		cursor = sprCursor;

	// Draw cursor.
	recoil = global.shake * 1.5;
	if (recoil > 0)
		recoil -= 1;

	// Draw teleportation marker.
	if (objPlayer.teleport == true)
	{
		draw_sprite_ext(sprTeleportSelector, 0, global.mousex, global.mousey, 1, 1, teleport_angle, c_white, 0.9);
		teleport_angle += 1;
	}
	else
	{
		if (scrIsReloading(objPlayer.sprite_index))
		{
			draw_sprite_ext(sprCursorReloading, image_index, global.mousex, global.mousey, 0.4, 0.4, -__view_get( e__VW.Angle, 0 ), c_white, 1);
			image_index += 0.35;
		}
		else
		{
			draw_sprite_ext(sprHitmarker, 0, global.mousex, global.mousey, 0.2, 0.2, 0, c_white, hitalpha);
			draw_set_blend_mode(bm_add);
			draw_sprite_ext(cursor, image_index, global.mousex, global.mousey, (25 + recoil) / 100, (25 + recoil) / 100, -__view_get( e__VW.Angle, 0 ), c_white, cursoralpha);
			draw_set_blend_mode(bm_normal);
		}
	}

	if (hitalpha > 0)
		hitalpha -= 0.1;



}
