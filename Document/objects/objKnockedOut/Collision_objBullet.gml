/// @description  Kill the enemy if they're leaning.
if (sprite_index == sprEGetUpLean)
{
	bullets = 0;
	global.my_id = id;
	with (objBullet)
	{
		if (place_meeting(x, y, global.my_id))
		{
			instance_destroy();
			global.my_id.bullets += 1;
		}
	}
	sound_ps(choose(sndBulletFlesh3, sndBulletFlesh2, sndBulletFlesh1));
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	if (bullets > 1)
		my_id.sprite_index = sprEDeadLeanShotgun;
	else
		my_id.sprite_index = sprEDeadLeanMachinegun;
	my_id.image_index = random(4);
	scrBloodShotDead(x, y, bullets, other.direction);
	global.myscore += 50;
	global.combo += 1;
	global.combotime = 240;
	global.kills += 1;
	global.shake = 7;
	instance_destroy();
}

