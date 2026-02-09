if (place_meeting(x, y, objBullet) || place_meeting(x, y, objEBullet))
{
	instance_create(x, y, objGrenadeExplosion);
	instance_create(x, y, objPetrolBombExplosion);
	instance_create(x, y, objChemicalSmoke);
	
	ground = instance_create(x, y, objExplosionGround);
	
	repeat (32)
	{
		my_id = instance_create(x - 16 + random(32), y - 16 + random(32), objDebris);
		my_id.direction = random(360);
		my_id.speed = random(4);
		my_id.friction = 0.15;
	}
	
	repeat (24)
	{
		my_id = instance_create(x - 16 + random(32), y - 16 + random(32), objTinyShard);
		my_id.direction = random(360);
		my_id.speed = random(4);
		my_id.friction = 0.15;
	}
	
	i = 0;
	repeat (12)
	{
		my_id = instance_create(x - 16 + random(32), y - 16 + random(32), objChemicalDebris);
		my_id.direction = random(360);
		my_id.speed = random(4);
		my_id.friction = 0.15;
		my_id.image_index = i;
		i += 1;
	}
	instance_destroy();
}

