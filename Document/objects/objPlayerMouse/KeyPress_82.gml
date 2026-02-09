/// @description  Reload guns manually.
if ((global.maskindex == 7 || global.maskindex == 12 || global.maskindex == 18) && instance_exists(objPlayer))
{
	if (sprite_index == sprPWalkSilencedShotgun)
	{
		sprite_index = sprPReloadSilencedShotgun;
		image_index = 0;
		image_speed = 0;
	}
	if (sprite_index == sprPWalkSniper)
	{
		sprite_index = sprPReloadSniper;
		image_index = 0;
		image_speed = 0;
	}
	if (sprite_index == sprPWalkSuppressedMG)
	{
		sprite_index = sprPReloadSuppressedMG;
		image_index = 0;
		image_speed = 0;
	}
}
else
	exit;

