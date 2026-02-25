/// @description Set stages of degradation based on life.
if life >= 6 image_index = 0
if //life >= 0 and 
life < 2 image_index = 1

/*if life <= 0 and destroyed = 0 {
    image_index = 2
    sound_ps(sndStoneCrumble)
    
    repeat(4 + random(6)) {
        my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objDebris)
        my_id.direction = objPlayer.direction - 140 - random(80)
        my_id.speed = random(4)
    }

    repeat(16) {
        my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objTinyShard)
        my_id.direction = random(360)
        my_id.speed = 1 + random(1)
    }
    destroyed = 1 
    // Create particles.
    //part_particles_create(global.dust, x, y, global.dustParticles, 200 + random(200))
}


/* */
/*  */
