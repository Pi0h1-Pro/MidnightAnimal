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

/*
my_id=instance_create(x,y-12,objScore)
my_id.text="+"+string(((100*random(20))+80*factor)*global.factor)+"pts"
global.myscore+=((100*random(20))+80*factor)*global.factor
global.killscore+=(100*random(20))
global.boldscore+=80*factor
global.combo+=1
global.combotime=240
global.killx[global.kills]=x
global.killy[global.kills]=y
global.kills+=1
global.gunkill+=1

/* */
/*  */
