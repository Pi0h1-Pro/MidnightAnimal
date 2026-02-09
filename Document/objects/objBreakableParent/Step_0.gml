// Destroy wall with sledgehammer.
if (scrMovingPlayerExists())
{
	if (place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer))
	{
		if (scrIsSwinging(objPlayer.sprite_index))
		{
			// and scrCurrentWeaponExt(objPlayer.sprite_index) = 19
			if (place_meeting(x, y, objEnemy))
				exit;
			
			life = 0;
			
			// Begin the process of destruction.
			alpha = 1;
			
			repeat (4 + random(6))
			{
				my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objDebris);
				my_id.direction = objPlayer.direction - 140 - random(80);
				my_id.speed = random(4);
			}
			
			repeat (16)
			{
				my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objTinyShard);
				my_id.direction = random(360);
				my_id.speed = 1 + random(1);
			}
			
			if (random(10) == 2)
			{
				my_id = instance_create(x, y, objWeaponSpawn);
				my_id.image_index = choose(0, 1, 6, 7, 9, 10, 11, 12, 26, 27, 41);
				my_id.image_angle = random(360);
				my_id.direction = random(360);
				my_id.speed = 1 + random(1);
				my_id.friction = 0.1;
				my_id.ammo = scrGetSpecificAmmo(my_id.image_index);
			}
			
			/// Destruction process.
			if (life <= 0)
			{
				switch (type)
				{
					// No effect.
					case 0:
						instance_destroy();
						break;
					
					// Wood shattering.
					case 1:
						var sw, sh;
						sw = (sprite_width / 2) / image_xscale;
						sh = (sprite_height / 2) / image_yscale;
						sound_ps(choose(sndWoodenBreak1, sndWoodenBreak2, sndWoodenBreak3));
						
						// part_particles_create(global.dust, x, y, global.dustParticles, 200 + random(200))
						repeat (fragments)
						{
							with (instance_create(x, y, objBreakableFragment))
							{
								sprite_index = other.sprite_index;
								image_index = other.image_index;
								image_xscale = other.image_xscale;
								image_yscale = other.image_yscale;
								image_angle = irandom(360);
								direction = irandom(360);
								speed = 2 + random(2);
								friction = 0.15;
								left = irandom(sw);
								top = irandom(sh);
								width = irandom(sw);
								height = irandom(sh);
							}
						}
						with (other)
							instance_destroy();
						instance_destroy();
						break;
				}
			}
		}
	}
}

