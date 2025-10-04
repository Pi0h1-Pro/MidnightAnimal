//Shake.
if global.shake > 0 {
    global.shake -= 0.5
    if global.xbox = 1 setrumble(0, 0, global.shake * (1 / 10) * 65535)
    view_xview[0] += -global.shake * 0.33 + random(global.shake * 0.66)
    view_yview[0] += -global.shake * 0.33 + random(global.shake * 0.66)
} 
