if (other.object_index == objEnemyFat)
{
	sound_play(sndCatchFire);
	my_id = instance_create(x, y, objBurningBody);
	my_id.sprite_index = choose(sprFatBurn);
	my_id.image_angle = direction;
	instance_destroy();
}

with (other)
{
	my_id = instance_create(x, y, objBurningGuy);
	my_id.direction = direction;
	instance_destroy();
}

