if (speed <= 0)
	exit;
if (other.object_index == objWallHeavyV)
{
	if (x > room_width / 2)
		image_angle = 0;
	else
		image_angle = 180;
}
if (other.object_index == objWallHeavyH)
{
	if (y < room_height / 2)
		image_angle = 90;
	else
		image_angle = 270;
}
move_contact_solid(image_angle, speed * 5);
mask_index = sprBoss2PryMask;
if (!place_free(x, y))
{
	sound_play(sndKnifeWall);
	move_bounce_solid(0);
	speed *= 0.5;
	friction = 0.5;
	bounced = 1;
}
else
{
	sound_play(sndHitWall);
	speed = 0;
	global.shake = 4;
}
mask_index = sprite_index;

