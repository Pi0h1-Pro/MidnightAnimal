/// @description  Create impact if the object hasn't been destroyed.
if (life > 0)
{
	life -= 0.1;
	with (other)
		scrBulletImpact();
}
else
	with (other)
		scrBulletImpact();

