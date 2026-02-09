if (global.xbox == 1)
	exit;
if (reload > 0)
	exit;
if (knives <= 0)
	exit;

if (place_meeting(x + lengthdir_x(10, dir), y + lengthdir_y(10, dir), objSecretMask))
{
	with (objSecretMask)
	{
		global.masks[image_index] = 1;
		global.newmask[global.newmasks] = image_index;
		global.newmasks += 1;
		sound_play(sndToken);
		my_id = instance_create(x, y, objLetterFound);
		my_id.text = "\"" + scrMaskGetName(image_index) + "\"";
		instance_destroy();
	}
	exit;
}

if (knives > 0)
{
	reload = 10;
	sprite_index = sprNicoleThrowKnife;
	image_speed = 0.5;
	knives -= 1;
	my_id = instance_create(x, y, objThrowingKnife);
	my_id.sprite_index = sprNicoleKnife;
	global.dir = dir;
	with (my_id)
	{
		move_contact_solid(global.dir, 12);
	}
	my_id.direction = dir;
	my_id.image_angle = dir;
	my_id.speed = 28;
	sound_play(sndThrow);
}

