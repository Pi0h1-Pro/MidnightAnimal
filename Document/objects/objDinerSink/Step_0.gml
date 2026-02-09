if (objEffector.amount < 180)
{
	if (image_index < 7.4)
		image_index += 0.2;
	objPlayer.image_index = image_index;
}
else
{
	if (objPlayer.sprite_index == sprPWashHands)
	{
		objPlayer.sprite_index = sprPDryHands;
		objPlayer.image_index = 0;
	}
	if (image_index < 12)
		image_index += 0.2;
}

with (objPlayer)
{
	if (sprite_index == sprPDryHands)
	{
		if (image_index < 22)
			image_index += 0.2;
		else
		{
			objPlayer.active = 1;
			objPlayer.sprite_index = sprPWalkUnarmed;
			objPlayer.y += 3;
		}
	}
}

