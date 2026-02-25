/// @description Scatter papers.
sound_ps(choose(sndPaperBurst1, sndPaperBurst2, sndPaperBurst3))
repeat(papers) {
    my_id = instance_create(x, y, objFlyingPapers)
    my_id.direction = random(360)
    my_id.image_angle = random(360)
    my_id.speed = 2 + random(2)
    my_id.friction = 0.15
}

my_id = instance_create(x, y, objMuzzleSmoke)
my_id.image_angle = irandom(360)

instance_destroy()

