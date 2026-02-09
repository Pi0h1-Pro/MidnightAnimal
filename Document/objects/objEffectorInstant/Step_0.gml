// if wait=0 {vcapture_frame() wait=1} else wait=0
if (!instance_exists(objEnemy) && !instance_exists(objEnemyBash) && !instance_exists(objKnockedOut))
	global.done = 1;
if (global.controller == 1)
{
	if (checkbutton(0, getid(5)))
		fade = 1;
}

