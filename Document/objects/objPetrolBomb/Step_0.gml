image_angle += speed * 7;

// effect_create_below(ef_smoke,x,y,0.2,make_colour_rgb(244, 203, 66))
effect_create_below(ef_smoke, x, y, 0.2, c_dkgray);

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
				global.my_id.speed = 0;
				hp -= global.my_id.damage;
				create_damage_projectile(random(3), global.albedo, 1, x + choose(-random(24), random(24)), y - 5);
				objEffector.hitalpha = 1;
				eflash = true;
				hit_enemy = true;
				alarm[1] = 5;
				sound_ps(sndHitMarker);
			}
		}
	}
}
else
{
	instance_create(x, y, objPetrolBombExplosion);
	instance_destroy();
	sound_ps(choose(sndGlass1, sndGlass2));
	sound_ps(sndPetrolBomb);
}


mask_index = sprWeaponMask;

