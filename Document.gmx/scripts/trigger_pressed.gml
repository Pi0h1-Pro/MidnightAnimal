//For LT use argument 1, use -1 for RT
if not variable_local_exists("tprev") {
    tprev = true
}
if abs(joystick_zpos(1)) < 0.9 tprev = true
if joystick_zpos(1) != 0 {
    if abs(joystick_zpos(1)) >= 0.9 and tprev
    and joystick_zpos(1) / abs(joystick_zpos(1)) = argument0 {
        tprev = false
        return true
    } else
        return false
} else return false
