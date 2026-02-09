if (objEffector.fade == 1 || objPlayer.persistent == 1 || other.object_index == objPlayerDead)
{
	sprite = sprGreyArrow;
	exit;
} // or objPlayer.wait>0
if (active == 0)
	exit;
if (instance_exists(objEnemy) || instance_exists(objKnockedOut))
	exit;
other.alarm[0] = 19;
other.active = 0;
other.addx = addx;
other.addy = addy;
objEffector.fade = 1;
objEffector.nextroom = nextroom;
objEffector.next = 1;
other.persistent = 1;
other.wait = 100;
other.movex = movex;
other.movey = movey;

