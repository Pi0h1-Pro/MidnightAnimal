angle += speed * 7 * diradd;

if (speed > 2.5)
{
	mask_index = sprite_index;
	global.my_id = id;
	with (objEnemy)
	{
		if (scrCantGetHit(object_index))
			nothing = 1;
		else
		{
			if (place_meeting(x, y, global.my_id))
			{
				with (global.my_id)
				{
					direction = direction + 160 + random(40);
					speed *= 0.3;
				}
				sound_ps(sndDoorHit);
				hp -= global.my_id.damage;
				create_damage_projectile(random(3), global.albedo, 1, x + choose(-random(24), random(24)), y - 5);
				objEffector.hitalpha = 1;
				eflash = true;
				hit_enemy = true;
				alarm[1] = 5;
				sound_ps(sndHitMarker);
				global.shake = 5;
				global.myscore += 50;
				global.combotime = 240;
			}
		}
	}
}
mask_index = sprWeaponMask;

