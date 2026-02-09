// sound_play(sndCatchFire)
my_id = instance_create(x, y, objBurningGuy);
my_id.direction = other.direction;
my_id.speed = 3;
instance_destroy();

// my_id=instance_create(x,y-12,objScore)
// my_id.text="+"+"500pts"
global.myscore += 500;
global.killscore += 500;
global.boldscore += 1200;
global.combo += 1;
global.combotime = 600;
global.killx[global.kills] = x;
global.killy[global.kills] = y;
global.kills += 1;
if (global.bonustime < 12 + global.factor * 4)
	global.bonustime = 12 + global.factor * 4;
if (global.factor == 2)
	ds_list_add(global.bonuslist, "Exposure");
if (global.factor == 3)
	ds_list_add(global.bonuslist, "Double Exposure");
if (global.factor == 4)
	ds_list_add(global.bonuslist, "Triple Exposure");
if (global.factor > 4)
	ds_list_add(global.bonuslist, "Severe Exposure");
instance_destroy();


my_id = instance_create(x, y, objWeaponThrow);
my_id.image_index = scrCurrentWeaponExt(sprite_index);
my_id.direction = other.direction - 70 + random(40);
my_id.speed = 2 + random(2);
my_id.ammo = ammo;

