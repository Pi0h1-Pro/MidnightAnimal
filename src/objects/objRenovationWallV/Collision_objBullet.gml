bullets = 0
global.my_id = id
with objBullet {
    if place_meeting(x, y, global.my_id) { global.my_id.bullets += 1 global.my_id.life -= 1 }
    scrBulletImpact()
    instance_destroy()
}
if bullets > 3 or life < 0 {
    sound_ps(choose(sndWoodenBreak1, sndWoodenBreak2, sndWoodenBreak3))
    repeat(24) {
        my_id = instance_create(x, y + random(32), objDebrisLarge)
        my_id.sprite_index = sprRenovationWallDebris
        if other.hspeed > 0 my_id.direction = -10 + random(20)
        else my_id.direction = 180 - 10 + random(20)
        my_id.speed = 2 + random(3)
    }
    instance_destroy()
    mp_grid_destroy(global.grid)
    scrInitPathFinding()
} else {
    if round(random(4)) {
        my_id = instance_create(x, other.y, objDebrisLarge)
        my_id.sprite_index = sprRenovationWallDebris
        my_id.direction = other.direction - 10 + random(20)
        my_id.speed = 2 + random(3)
    }
}

