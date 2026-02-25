/// @description  Create fireball.
move_contact_solid(direction, speed * 2)
my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objSmokeHit)
my_id.image_angle = direction
my_id.direction = random(360)
my_id.speed = random(0.5)

repeat(3) {
    my_id = instance_create(x, y, objFireBallFlame)
    my_id.direction = random(360)
    my_id.image_angle = random(360)
    my_id.speed = 0.2 + random(1)
}
instance_destroy()

