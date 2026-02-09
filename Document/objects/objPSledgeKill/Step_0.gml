if (image_index < 8)
	image_index += 0.15;
else
{
	// Create body and player.
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprEHeadStomp;
	my_id.image_index = 11;
	
	scrFinishExecution(sprPWalkSledgeHammer);
}
if (image_index >= 5 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	sound_ps(sndBonesBreak);
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_ps(sndPunchImpact);
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	
	instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objHitImpact);
	
	global.shake = 18;
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
}

