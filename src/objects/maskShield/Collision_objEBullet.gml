if cover = true {
    with other instance_destroy()
    sound_ps(choose(sndShieldImpact1, sndShieldImpact2, sndShieldImpact3, sndShieldImpact4, sndShieldImpact5))
    smoke = instance_create(x, y, objMuzzleSmoke)
    smoke.image_angle = direction
    smoke.direction = -direction
    
    /*repeat(8 + round(random(8))) {
        spark = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objElectricSpark)
        spark.direction = -direction - 20 + random(40)
        spark.speed = 3 + random(2)
        spark.image_angle = spark.direction
    }*/
    
    global.shake = 24
    global.blur = 60
    create_damage_projectile(random(3), global.albedo, 1, x + choose(-random(24), random(24)), y - 5)
} 

/* */
/*  */
