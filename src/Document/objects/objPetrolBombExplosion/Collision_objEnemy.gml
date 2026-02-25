/// @description  Status effects.
with other {
    if burning = 0 {
        affected = true
        burning = 1
        create_damage_general(random(3), global.c_fire, "BURNING!", 1, x + choose(-random(24), random(24)), y - 5)
    }
}
/*global.my_id = id
with other {
    /*if other.object_index = objEnemyFat
    or other.object_index = objEnemyFatStatic
    or other.object_index = objEnemyFatLSD
    or other.object_index = objEnemyFatGun {
        my_id = instance_create(x, y, objBurningBody)
        my_id.sprite_index = sprEFatBurned
        my_id.image_angle = direction
    } else if other.object_index = objDogPatrol {
        my_id = instance_create(x, y, objBurningBody)
        my_id.sprite_index = sprDogDeadBurn
        my_id.image_angle = direction
    } else {
        my_id = instance_create(x, y, choose(objEnemyBurn, objEnemyBurnExtreme))
        my_id.direction = direction
    } 
    burning = 1
    hp -= global.my_id.damage
    create_damage_projectile(random(3), global.c_fire, 1, x + choose(-random(24), random(24)), y - 5)
}


global.myscore += 100
global.combo += 1
global.combotime = 240

/* */
/*  */
