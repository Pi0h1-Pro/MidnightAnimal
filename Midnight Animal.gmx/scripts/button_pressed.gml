if not variable_global_exists("BA") {
    globalvar BA;
}
var i;
i = 0
repeat(10) {
    i += 1
    if not joystick_check_button(1, i) {
        BA[i] = true
    }
}
if joystick_check_button(1, argument0) and BA[argument0] = true {
    BA[argument0] = false
    return true
} else return false
