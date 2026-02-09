/// @description  I got hit by a bullet

// Look the way the bullet came
int_lookThisWay = int_bulletDir + 180;

// Subtract health
int_health -= other.damage;

scrBloodShot(x, y, 1);

// Destroy self if health is less than 0
if (int_health <= 0)
{
	scrEnemyDieShot(objBullet);
}

