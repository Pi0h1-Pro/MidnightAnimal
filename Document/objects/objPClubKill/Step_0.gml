if (image_index < 12)
	image_index += 0.25;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEDeadClubbed;
	my_id.image_index = 12;
	my_id.image_angle = image_angle;
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkClub;
	instance_destroy();
}

if (image_index > 6 && bled == 0)
{
	sound_play(sndPunch);
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	global.shake = 8;
	instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	repeat (4 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(18, image_angle) - 1 + random(2), y + lengthdir_y(18, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle + random(30);
	}
	bled = 1;
}

