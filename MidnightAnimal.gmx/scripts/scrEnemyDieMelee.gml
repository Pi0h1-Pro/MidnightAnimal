global.gunkill = 0
global.shake = 5 + random(10)
sleep = 3
pdir = point_direction(global.my_id.x, global.my_id.y, x, y)
if object_get_parent(object_index) = objEnemyIdle {
    if room = rmTrainstationEntrance sprite_index = choose(sprEWalkKnife, sprEWalkBat, sprEWalkClub, sprEWalkPipe)
    else sprite_index = choose(sprEWalkShotgun, sprEWalkM16)
}

my_id = instance_create(x, y, objDeadBody)
my_id.sprite_index = sprEBackBlunt

if instance_exists(objLSD) {
    flame = instance_create(x, y, objLSDFlameOut)
    flame.direction = my_id.direction
    flame.image_angle = my_id.image_angle
    flame.speed = my_id.speed * 0.5
    flame.friction = 0.15
}


//POLICE BLUNT BODIES
if scrIsPolice(object_index) {
    my_id.sprite_index = sprPoliceBackBlunt
    my_id.image_index = 1 + random(15)
    my_id.direction = pdir
    my_id.speed = 1.5 + random(1)
    my_id.image_angle = my_id.direction

    my_id1 = instance_create(x, y, objPoliceHat)
    my_id1.direction = pdir - 10 + random(20)
    my_id1.speed = 1 + random(2)
}

//GANG BLUNT BODIES
if scrIsGang(object_index) {
    my_id.sprite_index = sprEGangDeadBlunt
}

//General.
my_id.image_index = 1 + random(15)
my_id.direction = pdir
my_id.speed = 1.5 + random(1)
my_id.image_angle = my_id.direction


if sprite_index = sprEWalkUnarmed or sprite_index = sprEGiveUp or sprite_index = sprPoliceWalkUnarmed noweapon = 1
else noweapon = 0
//my_id = instance_create(x, y - 12, objScore)
//my_id.text = "+" + string(300 + 500 * global.factor + global.my_id.hits * 1000) + "pts"
global.myscore += (300 + 500 * global.factor) + global.my_id.hits * 1000
global.killscore += 300
global.boldscore += (500 * global.factor) + global.my_id.hits * 1000
//if global.my_id.hits > 1 {
//    my_id = instance_create(x, y + 24, objScore)
//    my_id.text = string(global.my_id.hits) + "x"
//}
global.combotime = 240
global.combo += 1
global.killx[global.kills] = x
global.killy[global.kills] = y
global.kills += 1

if noweapon = 0 {
    my_id = instance_create(x, y, objWeaponThrow)
    my_id.direction = pdir - 25 + random(50)
    my_id.speed = 2 + random(1)
    my_id.image_index = scrCurrentWeaponExt(sprite_index)
    my_id.ammo = ammo
}
instance_destroy()

