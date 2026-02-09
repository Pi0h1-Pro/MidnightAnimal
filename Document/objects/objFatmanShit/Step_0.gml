if (sprite_index == sprFatmanShitDie)
{
	if (image_index < 4)
		image_index += 0.2;
	image_speed = 0;
	exit;
}
if (sprite_index == sprFatmanShitDecapitated)
{
	if (image_index < 4)
		image_index += 0.2;
	image_speed = 0;
	exit;
}
if (!instance_exists(objPlayer))
	exit;
if (sprite_index == sprFatmanShit)
{
	test = scrLook(objPlayer.x, objPlayer.y, 4);
	if (test == 0 || test == 2)
	{
		image_index = 0;
		image_speed = 0;
		sprite_index = sprFatmanShitGiveUp;
	}
}

if (sprite_index == sprFatmanShitGiveUp)
{
	if (image_index < 4)
		image_index += 0.2;
}

if (objPlayer.sprite_index == sprPAttackAxe
	|| objPlayer.sprite_index == sprPAttackKatanaSpecial
	|| objPlayer.sprite_index == sprPAttackSword
	|| objPlayer.sprite_index == sprPAttackChainsaw
	|| objPlayer.sprite_index == sprPAttackCleaver
	|| objPlayer.sprite_index == sprPAttackKnifeFlamethrower
	|| objPlayer.sprite_index == sprPAttackKnife)
{
	if (place_meeting(x + 4, y, objPlayer))
	{
		my_id = instance_create(x - 4, y, objBodyPart);
		my_id.sprite_index = sprFatmanHead;
		my_id.direction = 0;
		my_id.speed = 2;
		scrMeleeBlood(x, y);
		repeat (10)
		{
			my_id = instance_create(x - 3, y, objBloodSquirt);
			my_id.direction = random(360);
			my_id.image_angle = random(360);
		}
		sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
		sound_play(sndCut1);
		SteamSetAchievement("ACH_SMELL_SOMETHING_BURNING");
		sprite_index = sprFatmanShitDecapitated;
		image_index = 0;
	}
}

