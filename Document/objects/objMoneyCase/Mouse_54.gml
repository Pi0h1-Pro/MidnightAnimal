if (instance_exists(objEnemy) || instance_exists(objEBullet) || instance_exists(objKnockedOut))
	exit;

if (instance_exists(objPlayer))
{
	if (point_distance(x, y, objPlayer.x, objPlayer.y) < 40)
	{
		instance_destroy();
		sound_play(sndPickupWeapon);
		objPlayer.sprite_index = sprPWalkBag;
		objPlayer.image_speed = 0;
	}
}

