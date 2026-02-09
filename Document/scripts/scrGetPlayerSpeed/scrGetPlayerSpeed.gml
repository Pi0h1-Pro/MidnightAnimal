function scrGetPlayerSpeed() {
	if (sprite_index == sprJohnSmokeCigarette)
		myspeed = 0;
	else if (sprite_index == simoneExecuteShield1
		|| sprite_index == simoneExecuteShield2
		|| sprite_index == simoneExecuteShieldSnap)
		myspeed = 0;
	else if (sprite_index == simoneWalkShield)
		myspeed = 1.5;
	else if (pierretteIsShielded(sprite_index))
		myspeed = 1.5;
	else if (sprite_index == pierretteAimShield
		|| sprite_index == pierretteAttackShield
		|| sprite_index == pierretteReloadShield
		|| sprite_index == pierretteThrowShield)
		myspeed = 0.5;
	else if (global.character == 1)
		myspeed = 4.5; // Thomas
	else if (global.character == 2)
		myspeed = 2.5; // Pierrette
	else
		myspeed = 3; // Base speed.
	factor = 1;



}
