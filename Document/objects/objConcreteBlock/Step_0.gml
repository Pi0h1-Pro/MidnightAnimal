/// @description  Set life of wall.
if (!scrMovingPlayerExists())
	exit;

if (life >= 7)
	sprite_index = sprConcreteBlock;
if (life >= 4 && life < 7)
	sprite_index = sprConcreteBlockV1;
if (life >= 2 && life < 4)
	sprite_index = sprConcreteBlockV2;
if (life > 0 && life < 2)
	sprite_index = sprConcreteBlockV3;
if (life <= 0)
{
	repeat (12 + random(12))
	{
		my_id = instance_create(x, y, objConcreteChunks);
		my_id.direction = random(360);
		my_id.speed = 2 + random(2);
		my_id.friction = 0.15;
	}
	
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
	
	instance_create(x, y, objConcreteBlockBase);
	instance_destroy();
}

// Destroy wall with melee.
if (instance_exists(objPlayer))
{
	if (place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer))
	{
		if ((scrIsSwinging(objPlayer.sprite_index) && scrCurrentWeaponExt(objPlayer.sprite_index) == 19)
			|| objPlayer.sprite_index == pierretteBashShield)
		{
			// if objPlayer.image_index = 5 {
			if (test == 0)
			{
				my_id = instance_create(x, y, objMuzzleSmoke);
				my_id.image_angle = objPlayer.direction - 180;
				my_id.direction = objPlayer.direction - 180;
				
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
				
				sound_ps(sndSledgeHammerHit);
				sound_ps(choose(sndStoneBreak1, sndStoneBreak2, sndStoneBreak3));
				life -= 10;
				test = 1;
			}
			else
				test = 1;
			
			//}
		}
	}
}

// Continue auto-tiling.
scrAutoTile();

