if (image_index < 29)
	image_index += 0.15;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprBoss1Dead;
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	instance_destroy();
	exit;
}
if (image_index > 13 && bled == 0)
{
	bled = 1;
	if (instance_exists(objLSD))
		sound_play(sndLSDSplat);
	else
		sound_play(choose(sndHit, sndHit2, sndHit3, sndHit1));
	repeat (4 + random(3))
	{
		instance_create(x + lengthdir_x(24, image_angle) - 1 + random(2), y + lengthdir_y(24, image_angle) - 1 + random(2), objBloodSquirt);
	}
}

