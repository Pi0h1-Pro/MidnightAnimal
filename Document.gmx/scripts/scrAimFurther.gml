//VIEW DISTANCE
if global.xbox = 0 aimfar = keyboard_check_direct(vk_shift)
else aimfar = trigger_pressed(1)//checkbutton(0, getid(8))
global.test = 0
with objWeapon {
    if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 global.test = 2
}
if place_meeting(x, y, objKnockedOut) global.test = 1
objEffector.action = global.test
if throwreload > 0 throwreload -= 1

if room != rmPhoneHomEntrance and aimfar {

    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(24 * xfactor, dir), y + lengthdir_y(24 * yfactor, dir)) * 0.1
    viewdir = point_direction(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(24 * xfactor, dir), y + lengthdir_y(24 * yfactor, dir))

    view_xview[0] += lengthdir_x(viewspeed, viewdir)
    view_yview[0] += lengthdir_y(viewspeed, viewdir)

    vdist = point_distance(x, y, room_width / 2, room_height / 2)
    vdir = point_direction(room_width / 2, room_height / 2, x, y)
    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)

    if view_xview[0] > room_width - view_wview[0] view_xview[0] = room_width - view_wview[0]
    if view_yview[0] > room_height - view_hview[0]view_yview[0] = room_height - view_hview[0]
    if view_xview[0] < 0 view_xview[0] = 0
    if view_yview[0] < 0 view_yview[0] = 0

    //SNIPER RIFLE
    if global.maskindex = 7
    or objPlayer.sprite_index = sprPWalkSniper
    or objPlayer.sprite_index = sprPAttackSniper
    or objPlayer.sprite_index = sprPWalkMagnum
    or objPlayer.sprite_index = sprPAttackMagnum
    factor = 4
    else factor = 2.5

    //LOOK FURTHER
    if global.xbox = 1 {
        viewx = objPlayer.x + rightthumb_x(0) * 0.01
        viewy = objPlayer.y - rightthumb_y(0) * 0.01
    } else {
        viewx = objPlayer.x + ((display_mouse_get_x() - display_get_width() * 0.5) * (view_wview[0] / display_get_width())) * factor
        viewy = objPlayer.y + ((display_mouse_get_y() - display_get_height() * 0.5) * (view_hview[0] / display_get_height())) * factor
    }
    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, viewx, viewy) * 0.1
    viewdir = point_direction(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, viewx, viewy)
    view_xview[0] += lengthdir_x(viewspeed, viewdir)
    view_yview[0] += lengthdir_y(viewspeed, viewdir)
    vdist = point_distance(x, y, room_width / 2, room_height / 2)
    vdir = point_direction(room_width / 2, room_height / 2, x, y)
    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)

} else {

    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(24 * xfactor, dir), y + lengthdir_y(24 * yfactor, dir)) * 0.1
    viewdir = point_direction(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(24 * xfactor, dir), y + lengthdir_y(24 * yfactor, dir))

    view_xview[0] += lengthdir_x(viewspeed, viewdir)
    view_yview[0] += lengthdir_y(viewspeed, viewdir)

    vdist = point_distance(x, y, room_width / 2, room_height / 2)
    vdir = point_direction(room_width / 2, room_height / 2, x, y)
    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)

    if view_xview[0] > room_width - view_wview[0] view_xview[0] = room_width - view_wview[0] - 0
    if view_yview[0] > room_height - view_hview[0] view_yview[0] = room_height - view_hview[0] - 0
    if view_xview[0] < 0 view_xview[0] = 0
    if view_yview[0] < 0 view_yview[0] = 0
}

xview = view_xview[0]
yview = view_yview[0]
