/// @description  Animate deaths.
scrMoveSolidOn()
if !scrPlaceFree(x, y) speed = 0
scrMoveSolidOff()

if scrBodyIsFlying(sprite_index) {
    if speed < 1.5 {
        if image_index < 3 image_index += 0.2
    } else {
        with objWindow solid = 0
        scrFlyThroughWindow()
    }
    if !scrPlaceFree(x, y) speed = 0
    with objWindow solid = 1
} else {
    if !scrPlaceFree(x, y) speed = 0
}

