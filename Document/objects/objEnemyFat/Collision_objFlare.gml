sound_play(sndCatchFire);
my_id = instance_create(x, y, objBurningBody);
my_id.sprite_index = choose(sprFatBurn);
my_id.image_angle = direction;
my_id = instance_create(x - 2 + random(4), y - 2 + random(4), objExplosionGround);
instance_destroy();

// my_id=instance_create(x,y-12,objScore)
// my_id.text="+"+"1500pts"
global.myscore += 1500;
global.killscore += 1500;
global.boldscore += 2200;
global.combo += 1;
global.combotime = 240;
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

