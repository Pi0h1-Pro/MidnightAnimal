global.shake = 5

if instance_exists(objLSD) {
    flame = instance_create(x, y, objLSDFlameOut)
    flame.direction = my_id.direction
    flame.image_angle = my_id.image_angle - 180
    flame.speed = my_id.speed * 0.5
    flame.friction = 0.15
}

scrMeleeBlood(x, y)
instance_destroy()

