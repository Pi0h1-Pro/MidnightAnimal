global.my_id = id;


with (objEnemy)
{
	if (scrCollisionLineExt(x, y, global.my_id.x, global.my_id.y, 4) == 0)
	{
		alert = 2;
		checkreload = 50;
		reload = 10;
		chasex = global.my_x;
		chasey = global.my_y;
	}
}



if (speed > 0.2)
	speed -= 0.2;
image_xscale = 1.5;
image_yscale = 1.5;
bullets = 0;

with (objThrowingKnife)
{
	if (place_meeting(x, y, global.my_id))
	{
		my_id = instance_create(x, y, objSplat);
		my_id.image_angle = my_id.direction;
		my_id.image_xscale = 0.8 + random(0.2);
		my_id.image_yscale = my_id.image_xscale;
		if (caliber == 0)
			instance_destroy();
		global.my_id.bullets += 5;
	}
}



if (bullets > 3 || other.speed == 1 || other.speed > 20)
	shotgunned = 1;
scrMeleeBlood(x, y);
hits += bullets;
image_xscale = 1;
image_yscale = 1;
edir = other.direction;
if (point_distance(other.x, other.y, other.startx, other.starty) > 150)
{
	ds_list_add(global.bonuslist, "Sharp Shooter");
	if (global.bonustime < 12)
		global.bonustime = 12;
}
test = 0;

