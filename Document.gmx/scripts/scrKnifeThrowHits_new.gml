global.gunkill = 0
global.shake = 3


edir = other.direction
test = 0

scrMeleeBlood(x, y)
scrIdleGetEnemy()

if object_index = objEnemyFat or object_index = objEnemyFatLSD or object_index = objEnemyFatStatic or object_index = objDogPatrol exit

my_id = instance_create(x, y, objDeadBody)
if scrIsGang(object_index) my_id.sprite_index = sprEGangDieThrowingKnife else my_id.sprite_index = sprEDieThrowingKnife
//if my_id.image_index < 15 my_id.image_index += 0.15 else my_id.image_index = 15
my_id.image_speed = 0.25
my_id.direction = edir
my_id.speed = 1.5 + random(1)
my_id.image_angle = my_id.direction
if sprite_index = sprEWalkUnarmed or sprite_index = sprEGiveUp noweapon = 1
else noweapon = 0

if noweapon = 0 {
        global.myscore += (300) + 400 * (global.factor)
        global.killscore += 400
        global.boldscore += 400 * global.factor
        global.combotime = 240
        global.combo += 1
        global.killx[global.kills] = x
        global.killy[global.kills] = y
        global.kills += 1
        if global.combotime < 12 global.combotime = 12
    my_id = instance_create(x, y, objWeaponThrow)
    my_id.direction = other.direction - 70 + random(40)
    my_id.speed = 1 + random(2)
    my_id.image_index = scrCurrentWeaponExt(sprite_index)
    my_id.ammo = ammo
} else {
        global.myscore += (600) + 400 * (global.factor)
        global.killscore += 600
        global.boldscore += 400 * global.factor
        global.combotime = 240
        global.combo += 1
        global.killx[global.kills] = x
        global.killy[global.kills] = y
        global.kills += 1
        if global.combotime < 12 global.combotime = 12
}

instance_destroy()
sound_play(choose(sndCut1, sndCut2))

with global.my_id {
    scrMeleeBlood(x, y)

    repeat(2 + random(3)) {
        my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt)
        my_id.image_angle = -image_angle - 10 + random(20)
    }
    my_id = instance_create(x, y, objBloodPool)
    my_id.direction = direction - 170 + random(10)
    my_id.image_angle = my_id.direction
    my_id.image_xscale = 0.8 + random(0.2)
    my_id.image_yscale = my_id.image_xscale
    instance_destroy()
}

