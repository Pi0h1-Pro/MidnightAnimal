// MELEE EXECUTIONS
if (argument0 == sprPWalkKnifeSniper || argument0 == sprPAttackKnifeSniper)
{
	global.usedkill[3] = 1;
	return objPKnifeKillSniper;
}

if (argument0 == sprPWalkKnife || argument0 == sprPAttackKnife)
{
	global.usedkill[3] = 1;
	return choose(objPKnifeKill, objPKnifeKill2);
}
if (argument0 == sprPWalkMachete || argument0 == sprPAttackMachete)
{
	global.usedkill[10] = 1;
	return choose(objPMacheteKill, objPMacheteKill2);
}
if (argument0 == sprPWalkBoilingPot || argument0 == sprPAttackBoilingPot)
{
	global.usedkill[14] = 1;
	return objPBoilingPotKill;
}
if (argument0 == sprPWalkSledgeHammer || argument0 == sprPAttackSledgeHammer)
{
	global.usedkill[11] = 1;
	return objPSledgeKill;
}

if (argument0 == sprPWalkBat || argument0 == sprPAttackBat || argument0 == sprPWalkCrowbar
	|| argument0 == sprPAttackCrowbar || argument0 == sprPAttackPan || argument0 == sprPWalkPan
	|| argument0 == sprPAttackPot || argument0 == sprPWalkPot || argument0 == sprPWalkPipe
	|| argument0 == sprPAttackPipe || argument0 == sprPWalkBag || argument0 == sprPAttackBag
	|| argument0 == sprPWalkArm || argument0 == sprPAttackArm || argument0 == sprPAttackBust
	|| argument0 == sprPWalkBust || argument0 == sprPWalkGuitar || argument0 == sprPAttackGuitar)
	return objPBluntKill;

if (argument0 == sprPWalkClub || argument0 == sprPAttackClub)
	return objPClubKill;

if (argument0 == sprPWalkSkateboard || argument0 == sprPAttackSkateboard)
	return choose(objPSkateboardKill, objPSkateboardKill2);

if (argument0 == sprPWalkAxe || argument0 == sprPAttackAxe)
{
	global.usedkill[7] = 1;
	return objPAxeKill;
}
if (argument0 == sprPWalkSword || argument0 == sprPAttackSword)
{
	global.usedkill[4] = 1;
	return objPKatanaKill;
}
if (argument0 == sprPWalkKatanaSpecial || argument0 == sprPAttackKatanaSpecial)
{
	global.usedkill[4] = 1;
	return objPKatanaKill;
}
if (argument0 == sprPWalkCleaver || argument0 == sprPAttackCleaver)
	return objPKillCleaver;
if (argument0 == sprPWalkChainsaw || argument0 == sprPAttackChainsaw)
	return choose(objPChainsawKill1, objPChainsawKill2);
if (argument0 == sprPWalkPoolBroke || argument0 == sprPAttackPoolBroke)
{
	global.usedkill[6] = 1;
	return objPBrokenPoolKill;
}
if (argument0 == sprPWalkPool || argument0 == sprPAttackPool)
{
	global.usedkill[5] = 1;
	return objPPoolKill;
}
if (argument0 == sprPWalkDrill || argument0 == sprPAttackDrill)
{
	global.usedkill[12] = 1;
	return objPDrillKill;
}
if (argument0 == sprPWalkNightStick || argument0 == sprPAttackNightStick)
{
	global.usedkill[8] = 1;
	return objPBluntKillNightStick;
}
if (argument0 == sprPWalkChain || argument0 == sprPAttackChain)
	return objPChainKill;
if (argument0 == sprPWalkKnifeFlamethrower || argument0 == sprPAttackKnifeFlamethrower
	|| argument0 == sprPWalkFlamethrower || argument0 == sprPAttackFlamethrower)
{
	global.usedkill[3] = 1;
	return objPKnifeKillFlamethrower;
}

// UNARMED EXECUTIONS
if ((argument0 == sprPWalkUnarmed || argument0 == sprPAttackUnarmed1 || argument0 == sprPWalkUnarmedLSD || argument0 == sprPAttackPunch) && global.maskindex == 2)
	return objTigerKill;

// GUN EXECUTIONS
if (argument0 == sprPWalkHandgun || argument0 == sprPAttackHandgun)
{
	if (objPlayer.ammo > 0)
		return objPKill9mm;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkNailGun || argument0 == sprPAttackNailgun)
{
	if (objPlayer.ammo > 0)
		return objPKillNailgun;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkDW || argument0 == sprPReloadDW)
{
	if (objPlayer.ammo > 0)
		return objPKillBeretta;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkSilencer || argument0 == sprPAttackSilencer || argument0 == sprPWalkSilencerLSD || argument0 == sprPAttackSilencerLSD)
{
	if (objPlayer.ammo > 0)
		return objPKillSilencer;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkMagnum || argument0 == sprPAttackMagnum)
{
	if (objPlayer.ammo > 0)
		return objPKillMagnum;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkM16 || argument0 == sprPAttackM16 || argument0 == sprPWalkM16LSD || argument0 == sprPAttackM16LSD)
	return objPKillM16;
if (argument0 == sprPWalkSilencedUzi || argument0 == sprPAttackSilencedUzi)
{
	if (objPlayer.ammo > 0)
		return objPKillSilencedUzi;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkShotgun || argument0 == sprPAttackShotgun || argument0 == sprPTurnShotgun
	|| argument0 == sprPWalkShotgunLSD || argument0 == sprPAttackShotgunLSD)
	return objPKillShotgun;
if (argument0 == sprPWalkUzi || argument0 == sprPAttackUzi)
{
	if (objPlayer.ammo > 0)
		return objPKillUzi;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkP90 || argument0 == sprPAttackP90)
{
	if (objPlayer.ammo > 0)
		return objPKillP90;
	else
		return objEnemyBash;
}
if (argument0 == sprPWalkMP5 || argument0 == sprPAttackMP5)
{
	if (objPlayer.ammo > 0)
		return objPKillMP5;
	else
		return objEnemyBash;
}

// THROW EXECUTIONS
if (argument0 == sprPWalkThrow)
{
	if (objPlayer.throwindex == 0)
	{
		global.usedkill[16] = 1;
		return objPScissorKill;
	}
	if (objPlayer.throwindex == 1)
	{
		global.usedkill[17] = 1;
		return objPBottleKill;
	}
	if (objPlayer.throwindex == 6)
	{
		global.usedkill[20] = 1;
		return objPDartKill;
	}
	if (objPlayer.throwindex == 5)
	{
		global.usedkill[19] = 1;
		return objPHammerKill;
	}
	if (objPlayer.throwindex == 3)
	{
		global.usedkill[18] = 1;
		return objPBrickKill;
	}
}
global.test = 1;

return objEnemyBash;
