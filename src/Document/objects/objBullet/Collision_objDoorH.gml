scrBulletImpact()
if other.solid = 1 exit

if sprite_index = sprBreachingRound {
    with other {
    
        // Open door.
        swinger=1
        if abs(swingspeed)>3.5 exit
        if abs(swingspeed)<2 sound_ps(choose(sndDoorOpen1, sndDoorOpen2))
        if x>other.x and other.y<y {swingspeed=-7 exit}
        if x>other.x and other.y>y {swingspeed=7 exit}
        if other.y<y+lengthdir_y(32,image_angle) swingspeed=-7 else swingspeed=7
    }
}

