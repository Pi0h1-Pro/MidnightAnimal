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
					instance_destroy();
				instance_create(x, y, objShockExplosion);
				sound_ps(sndDoorHit);
				hp -= 10;
				create_damage_projectile(random(3), global.albedo, 1, x + choose(-random(24), random(24)), y - 5);
				objEffector.hitalpha = 1;
				sound_ps(sndHitMarker);
				eflash = true;
				hit_enemy = true;
				alarm[1] = 5;
				global.shake = 5;
				global.myscore += 50;
				global.combotime = 240;
			}
		}
	}
}
mask_index = sprWeaponMask;

