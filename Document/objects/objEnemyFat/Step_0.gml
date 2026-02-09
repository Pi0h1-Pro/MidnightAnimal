global.factor += sign(alert);
if (path_index > 0)
{
	image_speed = 0.2;
	if (path_position == 1)
		path_end();
}
else
{
	if (killed == 0)
		image_speed = speed * 0.1;
}
if (!instance_exists(objPlayer))
{
	alert = 0;
	speed = 0;
	exit;
}
scrEFatStep();
if (sprite_index == sprEFatDie)
	exit;
if (energie < 4)
{
	if (life > 0)
		life -= 1;
	else
	{
		sprite_index = sprEFatDie;
		image_index = 1;
		image_speed = 0;
		
		global.myscore += (500) * global.factor;
		global.killscore += (500);
		global.boldscore += 150;
		global.combo += 1;
		global.combotime = 600;
		global.killx[global.kills] = x;
		global.killy[global.kills] = y;
		global.kills += 1;
		global.gunkill += 1;
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
		
		if (path_index > 0)
			path_end();
	}
	if (round(random(16 - (4 - energie))) == 2)
		instance_create(x, y, objSplat);
}

if (image_speed >= 0.5)
{
	if (place_meeting(x + lengthdir_x(16, angle), y + lengthdir_y(16, angle), objPlayer))
	{
		if (scrIsSearching(sprite_index))
			scrStopSearch(sprite_index);
		global.my_id = id;
		scrPlayerDieMelee();
	}
}

