/// @description  Deplete health.
bounce += 1 
other.hp -= 10 + random(100)
sound_ps(sndWeaponHit)
sound_ps(sndBoxingBag)
instance_create(x, y, objHitImpact)
instance_create(x, y, objMuzzleSmoke)

d = instance_create(x + choose(-random(24), random(24)), y - 5, objDamageCounter)
d.colour = random_color()
d.spd = random(3)
d.text = ":)"
d.image_alpha = 1
d.speed = 3 + random(3)
d.direction = other.direction - 20 + random(40)

// Create knockout.
if other.hp <= 0 {

    with other {
    
        // Check if the enemy is armed.
        scrEnemyDropWeapon()

        // Destroy enemy.
        instance_destroy()

        sound_ps(sndBounceKnockOut)
        scrEnemyGetKnockedOut(object_index, 180 - direction)

        // Assign a score.
        create_points("INCAPACITATED +50")
    }
}

// Add to current combo.
global.combotime = 240
global.combo += 1
global.myscore += 50
// Bounce off.
/*move_bounce_all(1)
speed *= 0.9
sound_ps(sndBounceReturn)

/* */
/*  */
