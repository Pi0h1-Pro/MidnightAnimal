image_speed = 0;
image_index = 0;
if (global.maskindex == 4)
	global.factor += 4;
myx = x + lengthdir_x(5, image_angle);
myy = y + lengthdir_y(5, image_angle);

// my_id = instance_create(x, y - 12, objScore)
// my_id.text = "+" + string((1200) + 400 * (global.factor)) + "pts"
global.myscore += (1200) + 400 * (global.factor);
global.killscore += 1200;
global.boldscore += 1400 * global.factor;
global.combotime = 240;
global.combo += 1;
global.killx[global.kills] = x;
global.killy[global.kills] = y;
global.kills += 1;
ds_list_add(global.bonuslist, "Execution");
if (global.combotime < 12)
	global.combotime = 12;

my_id = instance_create(x, y, objDeadBody);
my_id.sprite_index = sprFatKneed;
my_id.image_angle = image_angle;
my_id.speed = 1.5;
my_id.direction = image_angle;
my_id.friction = 0.1;
global.angle = image_angle - 180;

my_id = instance_create(x, y, objPlayerMouse);
my_id.reload = 5;
with (my_id)
	move_contact_solid(global.angle, 12);
instance_destroy();

