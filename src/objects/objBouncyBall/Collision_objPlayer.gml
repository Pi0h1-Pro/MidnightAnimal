/// @description  Pick up ball.
if !instance_exists(objPlayer) exit
if other.ball = 0 {
    other.ball = 1 
    sound_ps(sndBounceReturn)
    instance_destroy()
}

