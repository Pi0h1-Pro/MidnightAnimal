/// @description  Kill player.

// God mode.
if global.tgm = 1 exit

switch (global.character) {

    case 0: // JOHN
        objEffector.scratch = 100
        create_thought_damaged(global.nigredo, global.albedo, 0.2, 50, 0)
        player_bullet_hit()
        break;

    case 1: // THOMAS
        break;

    case 2: // PIERRETTE
        if pierretteIsShielded(sprite_index) {
            if !scrCheckHitBack(dir, other.direction) {
            } else player_bullet_hit()
        } else player_bullet_hit()
        break;

    case 3: // SIMONE
        if sprite_index = simoneWalkShield or sprite_index = simoneAttackShield {
            if !scrCheckHitBack(dir, other.direction) {
                hp_shield -= other.damage
                scrBloodShot(x, y, 3)
                sound_ps(choose(sndBulletFlesh3, sndBulletFlesh2, sndBulletFlesh1))
                create_damage_projectile(random(3), global.albedo, 1, x + choose(-random(24), random(24)), y - 5)
                with other instance_destroy()

                // Destroy shield.
                if hp_shield <= 0 {
                    scrMeleeBlood(x, y)
                    sound_ps(choose(sndCritical1, sndCritical2, sndCritical3))
                    body = instance_create(x, y, objDeadBody)
                    body.sprite_index = choose(sprEDeadMachinegun, sprEDeadShotgun)
                    if body.sprite_index = sprEDeadMachinegun body.image_index = choose(1, 3, 6)
                    else body.image_index = choose(0, 2, 4, 5, 10)
                    body.image_speed = 0
                    body.direction = dir
                    body.image_yscale = choose(1, -1)
                    body.image_xscale = 1
                    body.speed = 1
                    body.friction = 0.15
                    body.image_angle = body.direction

                    // Fully restore the player's health.
                    hp += max_hp
                    sound_ps(sndCollectHealth)
                    create_health_number(max_hp, 1)
                    global.screeneffect = 16

                    sprite_index = simoneWalk
                    hp_shield = 150
                }
            }
        } else player_bullet_hit()
        break;
}

