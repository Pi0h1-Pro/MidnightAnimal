with (other)
{
	i = 0;
	repeat (16)
	{
		my_id = instance_create(x + i * 2, y + 4, objShard);
		my_id.direction = point_direction(x + 16, y - 8, my_id.x, my_id.y);
		my_id.speed = random(4);
		my_id = instance_create(x + i * 2, y + 4, choose(objDebris, objDoorDebris));
		my_id.direction = point_direction(x + 16, y - 8, my_id.x, my_id.y);
		my_id.speed = random(4);
		i += 1;
	}
	if (instance_exists(objLSD))
		sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
	else
		sound_play(choose(sndGlass1, sndGlass2));
}
instance_create(other.x, other.y, objGlassPanelDestroyedH);
with (other)
	instance_destroy();
if (global.shake < 8)
	global.shake = 8;

