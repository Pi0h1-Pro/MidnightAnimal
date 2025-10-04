if alert = 0 {
    if x = startx and y = starty nothing = 1
    else scrReturnToStart(path)
}

if alertwait > -1 {
    if alertwait = 0 {
        path_end() alert = 1
    }
    alertwait -= 1
}

if path_position = 1 {
    path_end() alert = 0 lookreload = 0
}

if lookreload > 0 lookreload -= 1
else {
    seen = scrLook(objPlayer.x, objPlayer.y, 12)
    if seen = 0 {
        path_end() alert = 1
    }
    if seen = 2 {
        path_end() alert = 2
    }
    if seen == 1 and alert > 0 {
        if alert < 3 {
            alert = 4 chasereload = 0
        }
    }
    lookreload = 8
}
if instance_exists(objPlayerDead) {
    alert = 0 path_end() findwall = 1 speed = sign(speed)
}

    if path_index >= 0 image_speed = path_speed * 0.1
    if !instance_exists(objPlayer) {
        alert = 0
        if speed > 1 speed = 1 exit
    }
    if alert < 2 and alert > 0 scrCharge(objPlayer.x, objPlayer.y, 10)
    if alert = 2 scrAim(objPlayer.x, objPlayer.y)
    if alert = 3 scrChaseSearch(objPlayer.x, objPlayer.y, 10)

scrMoveSolidOff()

/*if alert = 0 {
    if x = startx and y = starty nothing = 1
    else scrReturnToStart(path)
}
if alertwait > -1 {
    if alertwait = 0 {
        path_end() alert = 1
    }
    alertwait -= 1
}
//if scrIsSearching(sprite_index) {image_speed=0.2 speed=0 exit}
if path_position = 1 {
    path_end() alert = 0 lookreload = 0
}
if lookreload > 0 lookreload -= 1
else {
    seen = scrLook(objPlayer.x, objPlayer.y, 12)
    if seen = 0 {
        path_end() alert = 1
    }
    if seen = 2 {
        path_end() alert = 2
    }
    if seen == 1 and alert > 0 {
        if alert < 3 {
            alert = 4 chasereload = 0
        }
    }
    lookreload = 8
}
if instance_exists(objPlayerDead) {
    alert = 0 path_end() findwall = 1 speed = sign(speed)
}
    if alert < 2 and alert > 0 scrCharge(objPlayer.x, objPlayer.y, 10, 4)
    if alert = 2 scrAim(objPlayer.x, objPlayer.y, 10, 4)
    if alert = 3 scrChaseSearch(objPlayer.x, objPlayer.y, 4)
if path_index >= 0 image_speed = path_speed * 0.1
else image_speed = speed * 0.1

scrMoveSolidOff()
