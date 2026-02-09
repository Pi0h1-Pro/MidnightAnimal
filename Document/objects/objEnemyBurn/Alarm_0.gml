if (sprite_index == sprEBurnExtreme)
{
	my_id = instance_create(x, y, objEDieBurn);
	my_id.image_angle = direction;
}
else
{
	body = instance_create(x, y, objBurningBody);
	body.sprite_index = choose(sprEDeadBurn1, sprEDeadBurn2, sprEDeadBurn3, sprEDeadBurn4, sprEDeadBurn5);
	body.image_angle = direction;
}

instance_destroy();

repeat (2 + random(2))
{
	flames = instance_create(x - sprite_width / 2 + random(sprite_width), y - sprite_height / 2 + random(sprite_height), objTinyFire);
}

