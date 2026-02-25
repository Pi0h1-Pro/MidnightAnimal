/// @description  Movement.
if !place_free(x+hspeed*2,y) hspeed=-hspeed
if !place_free(x,y+vspeed*2) vspeed=-vspeed
image_speed=speed*0.5
if speed<0.7 friction=0.005 else friction=0.05
image_angle=direction

if place_meeting(x + hspeed, y, objWall)
or place_meeting(x + hspeed, y, objEnemy)
or place_meeting(x + hspeed, y, objDoorV)
or place_meeting(x + hspeed, y, objWindow) {
    direction = -direction + 180
    bounce += 1
    sound_ps(sndBounce)
}

if place_meeting(x, y + vspeed, objWall)
or place_meeting(x, y + vspeed, objEnemy)
or place_meeting(x, y + vspeed, objDoorV)
or place_meeting(x, y + vspeed, objWindow) {
    direction = -direction
    bounce += 1
    sound_ps(sndBounce)
}
        
if bounce >= 10 or speed <= 2 {
    sprite_index = sprBallBurst
    image_speed = 0.5
    sound_ps(sndMineDing)
    
    d = instance_create(x + choose(-random(24), random(24)), y - 5, objDamageCounter)
    d.colour = random_color()
    d.spd = random(3)
    d.text = "Pop!"
    d.image_alpha = 0.8
    d.speed = 3 + random(3)
    d.direction = other.direction - 20 + random(40)
}

