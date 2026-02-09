instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);

my_id = instance_create(x, y, objDeadBody);
my_id.image_angle = image_angle;
my_id.sprite_index = bottom;
my_id.image_index = 35;

create_points("FATALITY +200");
scrFinishExecution(sprPWalkUnarmed);

