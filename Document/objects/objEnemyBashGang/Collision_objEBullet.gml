exit;
with (other)
{
	if (place_meeting(x, y, objSolid) || place_meeting(x, y, objSolidCaster) || place_meeting(x, y, objWall))
	{
		move_outside_solid(direction - 180, speed * 2);
		if (!place_meeting(x, y, objPlayer))
			exit;
	}
}
global.my_id = id;
image_xscale = 1.5;
image_yscale = 1.5;
bullets = 0;
energie -= 1;
with (objEBullet)
{
	if (place_meeting(x, y, global.my_id))
	{
		my_id = instance_create(x, y, objBloodPool);
		my_id.direction = direction - 170 + random(10);
		my_id.image_angle = my_id.direction;
		my_id.image_xscale = 0.8 + random(0.2);
		my_id.image_yscale = my_id.image_xscale;
		instance_destroy();
		global.my_id.bullets += 1;
	}
}
image_xscale = 1;
image_yscale = 1;
edir = other.direction;
test = 0;
scrMeleeBlood(x, y);
if (bullets > 1 || round(random(1)) || energie < 0)
{
	my_id = instance_create(x, y, objPlayerDead);
	if (bullets > 1)
		my_id.sprite_index = sprPBackShotgun;
	else
		my_id.sprite_index = sprPBackMachinegun;
	my_id.image_index = floor(random(8));
	my_id.direction = edir;
	my_id.speed = 1.5 + random(1) + bullets * 0.15;
	my_id.image_angle = my_id.direction;
	my_id = instance_create(x + lengthdir_x(24, edir), y + lengthdir_y(24, edir), objMaskDrop);
	my_id.direction = edir - 40 + random(80);
	my_id.speed = 1.5 + random(1);
	instance_destroy();
}
my_id = instance_create(x, y, objKnockedOut);
my_id.angle = image_angle;
if (sprite_index == sprPAttackBashPolice)
{
	my_id.sprite_index = sprPoliceGetUp;
	my_id.type = objPolice;
}
else
	my_id.type = objEnemy;
instance_destroy();

