pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
scrMeleeBlood(x, y);

my_id = instance_create(x, y, objDeadBody);
my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
my_id.speed = 2;
my_id.sprite_index = sprESubwayDead;
my_id.image_index = 0;
my_id.image_angle = my_id.direction;

my_id = instance_create(x + lengthdir_x(6, direction - 180), y + lengthdir_y(6, direction - 180), objPoliceHat);
my_id.direction = direction - 180;
my_id.speed = 1;
my_id.sprite_index = sprInspectorHat;
my_id.friction = 0.1;

if (sprite_index == sprESubwayBriefcase)
{
	my_id = instance_create(x + lengthdir_x(6, direction - 90), y + lengthdir_y(6, direction - 90), objBriefcase);
	my_id.speed = 1 + random(1);
	my_id.friction = 0.1;
}
instance_destroy();

