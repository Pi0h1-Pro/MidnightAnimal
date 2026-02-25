/// @description Create water puddle and steam upon impact.
instance_create(x,y,objWaterPuddle)
instance_create(x - 12 + random(24), y - 12 + random(24), objBigWater)
repeat (4) instance_create(x,y,objSteam)
repeat(2) {
    my_id = instance_create(x, y, objWaterSplat)
    my_id.direction = random(360)
    my_id.speed = 2 + random(2)
}
repeat(2) {
    my_id = instance_create(x, y, objWaterSmudge)
    my_id.direction = random(360)
    my_id.speed = 3 + random(3)
    my_id.image_angle = my_id.direction
}
sound_ps(sndBoilingWater)
instance_destroy()

