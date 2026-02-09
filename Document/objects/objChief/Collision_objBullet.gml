global.my_id = id;
if (speed > 0.2)
	speed -= 0.2;
image_xscale = 1.5;
image_yscale = 1.5;
bullets = 0;
with (objBullet)
{
	if (place_meeting(x, y, global.my_id))
	{
		my_id = instance_create(x, y, objBloodPool);
		my_id.direction = direction - 170 + random(10);
		my_id.speed = 1;
		my_id.image_angle = my_id.direction;
		my_id.image_xscale = 0.8 + random(0.2);
		my_id.image_yscale = my_id.image_xscale;
		if (caliber == 0)
			instance_destroy();
		global.my_id.bullets += 1;
	}
}
if (bullets > 3)
	shotgunned = 1;
hits += bullets;
image_xscale = 1;
image_yscale = 1;
edir = other.direction;
test = 0;
scrMeleeBlood(x, y);

