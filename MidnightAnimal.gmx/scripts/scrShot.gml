repeat ((random(3))) {
my_id=instance_create(argument0,argument1,objSplat)
my_id.direction=random(360)
my_id.speed=2+random(2)
}
repeat (random(2)) {
my_id=instance_create(argument0,argument1,objSmudge)
my_id.direction=argument3-20+random(40)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
