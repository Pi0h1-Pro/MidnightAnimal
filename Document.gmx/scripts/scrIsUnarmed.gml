/// scrIsUnarmed(argument0)

// John.
if (argument0 == sprPWalkUnarmed
	|| argument0 == sprPAttackUnarmed1
	|| argument0 == sprPAttackUnarmed2
	|| argument0 == sprPAttackPunch
	|| argument0 == sprPThrow
	|| argument0 == sprPDrinkSoda

// Thomas.
|| argument0 == thomasWalk
	|| argument0 == thomasStrikeL1
	|| argument0 == thomasStrikeL2
	|| argument0 == thomasStrikeL3
	|| argument0 == thomasStrikeL4
	|| argument0 == thomasStrikeR1
	|| argument0 == thomasStrikeR2
	|| argument0 == thomasStrikeR3
	|| argument0 == thomasStrikeR4

// Miscellaneous.
|| argument0 == sprJohnSmokeCigarette)
	return true;
else
	return false;
