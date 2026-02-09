function scrGetExecution(argument0) {
	// MELEE EXECUTIONS

	// if global.combo <= 10 execution = choose(objPKillNeckSnap, objPKillPunch) else execution = choose(objPKillStomp, objPKillHeadRip)
	execution = choose(objPKillNeckSnap, objPKillPunch, objPKillStomp);

	if (scrIsUnarmed(argument0))
		return execution;

	if (argument0 == sprPWalkBat || argument0 == sprPAttackBat || argument0 == sprPWalkCrowbar
		|| argument0 == sprPAttackCrowbar || argument0 == sprPAttackPan || argument0 == sprPWalkPan
		|| argument0 == sprPAttackPot || argument0 == sprPWalkPot
		|| argument0 == sprPWalkBag || argument0 == sprPAttackBag
		|| argument0 == sprPWalkArm || argument0 == sprPAttackArm || argument0 == sprPAttackBust
		|| argument0 == sprPWalkBust || argument0 == sprPWalkGuitar || argument0 == sprPAttackGuitar)
		return objPBluntKill;

	if (argument0 == sprPWalkKnife || argument0 == sprPAttackKnife || argument0 == sprPAttackKnifeSlash1 || argument0 == sprPAttackKnifeSlash2 || argument0 == sprPAttackKnifeStab)
		return choose(objPKillKnife, objPKillKnifeStab);
	if (argument0 == sprPWalkKitchenKnife)
		return objPKillKitchenKnife;
	if (argument0 == sprPWalkMachete || argument0 == sprPAttackMachete)
		return choose(objPKillMachete, objPKillMacheteSlash);
	if (argument0 == sprPWalkBoilingPot || argument0 == sprPAttackBoilingPot)
		return objPBoilingPotKill;
	if (argument0 == sprPWalkSledgeHammer || argument0 == sprPAttackSledgeHammer)
		return objPSledgeKill;
	if (argument0 == sprPWalkPipe || argument0 == sprPAttackPipe)
		return choose(objPBluntKill, objPKillPipe);
	if (argument0 == sprPWalkClub || argument0 == sprPAttackClub)
		return objPKillClub;
	if (argument0 == sprPWalkSkateboard || argument0 == sprPAttackSkateboard)
		return objPSkateboardKill;
	if (argument0 == sprPWalkHammer || argument0 == sprPAttackHammer)
		return objPKillHammer;
	if (argument0 == sprPWalkBrick || argument0 == sprPAttackBrick)
		return objPBrickKill;
	if (argument0 == sprPWalkWrench || argument0 == sprPAttackWrench)
		return objPKillWrench;
	if (argument0 == sprPWalkBottle || argument0 == sprPAttackBottle)
		return objPBottleKill;
	if (argument0 == sprPWalkBottleBroken || argument0 == sprPAttackBottleBroken)
		return objPBottleBrokenKill;
	if (argument0 == sprPWalkAxe || argument0 == sprPAttackAxe)
		return objPAxeKill;
	if (argument0 == sprPWalkKatana || argument0 == sprPAttackKatanaH1 || argument0 == sprPAttackKatanaH2 || argument0 == sprPAttackKatanaV || argument0 == sprPAttackKatanaThrust)
		return objPKillKatana;
	if (argument0 == sprPWalkCleaver || argument0 == sprPAttackCleaver)
		return objPKillCleaver;
	if (argument0 == sprPWalkChainsaw || argument0 == sprPAttackChainsaw)
		return choose(objPChainsawKill1, objPChainsawKill2);
	if (argument0 == sprPWalkPool || argument0 == sprPAttackPool)
		return objPPoolKill;
	if (argument0 == sprPWalkDrill || argument0 == sprPAttackDrill)
		return objPDrillKill;
	if (argument0 == sprPWalkFlamethrower || argument0 == sprPAttackFlamethrower)
		return objPKillStomp;
	if (argument0 == sprPWalkScrewdriver || argument0 == sprPWalkScrewdriver)
		return objPScrewdriverKill;

	// UNARMED EXECUTIONS
	// if global.character = 1 return objPKillNonlethal

	// GUN EXECUTIONS
	if (objPlayer.ammo > 0)
	{
		if (argument0 == sprPWalkHandgun || argument0 == sprPAttackHandgun)
			return objPKill9mm;
		if (argument0 == sprPWalkDesertEagle || argument0 == sprPTurnDesertEagle || argument0 == sprPAttackDesertEagle)
			return objPKillDesertEagle;
		if (argument0 == sprPWalkAJM || argument0 == sprPAttackAJM)
			return objPKillAJM;
		if (argument0 == sprPWalkNailGun || argument0 == sprPAttackNailgun)
			return objPKillNailgun;
		if (argument0 == sprPWalkDW || argument0 == sprPReloadDW)
			return objPKillBeretta;
		if (argument0 == sprPWalkSilencer || argument0 == sprPAttackSilencer)
			return objPKillSilencer;
		if (argument0 == sprPWalkMagnum || argument0 == sprPAttackMagnum)
			return objPKillMagnum;
		if (argument0 == sprPWalkHK417 || argument0 == sprPAttackHK417 || argument0 == sprPTurnHK417)
			return objPKillHK417;
		if (argument0 == sprPWalkFAL || argument0 == sprPAttackFAL)
			return objPKillFAL;
		if (argument0 == sprPWalkIngram || argument0 == sprPAttackIngram)
			return objPKillIngram;
		if (argument0 == sprPWalkFAMAE || argument0 == sprPAttackFAMAE)
			return objPKillFAMAE;
		if (argument0 == sprPWalkShotgun || argument0 == sprPAttackShotgun || argument0 == sprPTurnShotgun)
			return objPKillShotgun;
		if (argument0 == sprPWalkUzi || argument0 == sprPAttackUzi)
			return objPKillUzi;
		if (argument0 == sprPWalkAK || argument0 == sprPAttackAK || argument0 == sprPTurnAK)
			return objPKillAK;
		if (argument0 == sprPWalkThompson || argument0 == sprPAttackThompson || argument0 == sprPTurnThompson)
			return objPKillThompson;
		if (argument0 == sprPWalkP90 || argument0 == sprPAttackP90)
			return objPKillP90;
		if (argument0 == sprPWalkMP5 || argument0 == sprPAttackMP5 || argument0 == sprPTurnMP5)
			return objPKillMP5;
	}
	else
		return execution;

	return execution;



}
