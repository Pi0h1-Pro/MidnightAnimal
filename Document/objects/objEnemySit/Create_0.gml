image_speed = 0;
image_index = 0;
reload = floor(random(10));
alert = 0;
ammo = 17;
path = path_add();
type = objEnemyPatrolSilencer;

// choose(objEnemy,objEnemyMeleeStationary)
if (room == rmTrainstationEntrance || room == rmBossClubFloor1)
	type = objEnemyMeleeStationary;
if (room == rmHotelEntrance)
	type = choose(objEnemy);
on = 0;

