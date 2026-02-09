/// @description  Fade out the sprite.
if (fade == 1)
{
	if (alpha > 0)
		alpha -= 0.05;
	if (alpha == 0)
		instance_destroy();
}
if (!scrMovingPlayerExists())
	exit;

/// Collision with destructible objects.
if (index == 8)
{
	if (place_meeting(x, y, objDeadBody))
	{
		var body = instance_place(x, y, objDeadBody);
		with (body)
			scrEnemyDieExplode();
	}
	
	if (place_meeting(x, y, objKnockedOut))
	{
		var body = instance_place(x, y, objKnockedOut);
		with (body)
			scrEnemyDieExplode();
	}
	
	if (place_meeting(x, y, objEnemy))
	{
		var body = instance_place(x, y, objEnemy);
		with (body)
			scrEnemyDieExplode();
	}
}

