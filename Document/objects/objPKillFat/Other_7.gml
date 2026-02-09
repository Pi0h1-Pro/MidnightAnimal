image_speed = 0;
image_index = 0;

my_id = instance_create(x, y, objDeadBody);
my_id.sprite_index = sprEFatKneed;
my_id.image_angle = image_angle;
my_id.speed = 1.5;
my_id.direction = image_angle;
my_id.friction = 0.1;
global.angle = image_angle - 180;

scrFinishExecution(sprPWalkUnarmed);

