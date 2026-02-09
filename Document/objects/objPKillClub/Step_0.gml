if (image_index < 12)
	image_index += 0.5;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEDeadClubbed;
	my_id.image_index = 12;
	my_id.image_angle = image_angle;
	sound_ps(sndGolfClap);
	scrFinishExecution(sprPWalkClub);
}

if (image_index > 6 && bled == 0)
{
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
	sound_ps(sndPunch);
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	global.shake = 12;
	instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objHitImpact);
	instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	repeat (4 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(18, image_angle) - 1 + random(2), y + lengthdir_y(18, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle + random(30);
	}
	bled = 1;
}

