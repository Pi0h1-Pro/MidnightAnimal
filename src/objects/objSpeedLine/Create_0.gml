image_speed = 0
image_index = 6
image_yscale = choose(1, 2, 3)
image_xscale = 3 + image_yscale
hspeed -= image_yscale * 2
/*
if scrRidingTrain() {
    hspeed = objMetroCarScene.trainspeed * (0.9 + random(0.1))
    image_blend = c_black
    image_alpha = (0.15 + random(0.1)) * (1 - objMetroCarScene.stationalpha)
}

if scrOnHighway() {
    hspeed = background_hspeed * (4.5 + random(0.2))
    image_alpha = random(0.01) + (abs(hspeed) / 3 - 7) * 0.005
}



/* */
/*  */
