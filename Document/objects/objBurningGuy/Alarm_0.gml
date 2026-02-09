my_id = instance_create(x, y, objBurningBody);
my_id.sprite_index = choose(sprEDeadBurn4, sprEDeadBurn5, sprEDeadBurn6);
my_id.image_angle = direction;
instance_destroy();

