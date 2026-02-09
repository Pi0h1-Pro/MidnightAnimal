/// @description  Kill enemy.
if (speed > 0)
{
	mask_index = sprite_index;
	global.my_id = id;
	with (objEnemy)
	{
		if (place_meeting(x, y, global.my_id))
		{
			scrKnifeThrowHits();
			global.combotime = 240;
		}
	}
	mask_index = sprWeaponMask;
}

