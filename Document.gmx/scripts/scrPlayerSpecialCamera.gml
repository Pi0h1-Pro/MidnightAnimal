previousx = x
previousy = y
if sprite_index = sprPHeadExplode {
    exit
}
if room = rmSequence13Downstairs {
    if active = 0 {
        if y > 224 {
            y -= 2 image_index += 0.2 legindex += 0.3
        } else active = 1
    }
    if sprite_index = sprPWalkUnarmed {
        with objBackgroundColorClear {
            instance_create(x, y, objBackgroundColor) instance_destroy()
        }
    }
}
if global.xbox = 1 scrXboxPlayerMouseHouse()

global.test = 0
with objWeapon {
    if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 global.test = 2
}
if place_meeting(x, y, objKnockedOut) global.test = 1
objEffector.action = global.test
if throwreload > 0 throwreload -= 1
if instance_exists(objPhoneConversation) valid = 0
else valid = 1
if global.xbox = 0 aimfar = keyboard_check_direct(vk_shift)
else aimfar = trigger_pressed(1) //checkbutton(0, getid(9))
factor = 1
if aimfar and valid {
    if global.xbox = 1 {
        viewx = objPlayer.x + rightthumb_x(0) * 0.0045
        viewy = objPlayer.y - rightthumb_y(0) * 0.003
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
    if objPlayer.active = 0 and(instance_exists(objPhoneConversation) or instance_exists(objFocus)) {
        if instance_exists(objLightingEngine) or instance_exists(objTutorialLight) {
            with objLight {
                if targetstrength = 1 {
                    valid = 0
                    vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                    vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                    viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                    view_xview[0] += lengthdir_x(viewspeed, viewdir)
                    view_yview[0] += lengthdir_y(viewspeed, viewdir)
                    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
                }
            }
        }

        with objBoss1 {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180) - 32) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180) - 32)
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objBoss1Down {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180) - 32) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180) - 32)
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objClubOwner {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180) - 32) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180) - 32)
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objOldman {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        global.test = 0
        with objLight {
            if targetstrength = 1 global.test = 1
        }
        if global.test = 0 {
            with objTutorialHobo {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        with objBoss4 {
            if state = 2 or state = 4 or state = 6 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        with objBodyguard {
            if state = 2 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        with objDeadTable {
            if global.talked = 2 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        with objBoss3Kneel {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objDreamPlayer {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objAssassinSitUzi {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objSacrifice {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objChief {
            if global.locked = 1 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        with objPrisoner {
            if global.locked = 0 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        if room = rmStore3 {

            with objBoss2Corpse {
                if state = 1 {
                    valid = 0
                    vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                    vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                    viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                    view_xview[0] += lengthdir_x(viewspeed, viewdir)
                    view_yview[0] += lengthdir_y(viewspeed, viewdir)
                    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
                }
            }

            with objPlayerMouseHouse {
                test = 1
                if instance_exists(objBoss2Corpse) {
                    if objBoss2Corpse.state == 1 test = 0
                }
                if test {
                    valid = 0
                    vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                    vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                    viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                    view_xview[0] += lengthdir_x(viewspeed, viewdir)
                    view_yview[0] += lengthdir_y(viewspeed, viewdir)
                    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
                }
            }

        }

        with objHobo {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objBoss2Crawl {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

        with objProstitute {
            if active = 1 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }
        }

        with objBoss2 {
            valid = 0
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        }

    } else {
        if active = 1 or(!instance_exists(objPhone) and!instance_exists(objBoss4) and!instance_exists(objBossPhone) and!instance_exists(objTrain)) or instance_exists(objBodyguard) and!instance_exists(objPicture) {
            vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
            vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
            viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
            viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
            view_xview[0] += lengthdir_x(viewspeed, viewdir)
            view_yview[0] += lengthdir_y(viewspeed, viewdir)
            view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
        } else {
            with objPhone {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }

            with objBossPhone {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }

            with objTrain {
                if visible = 1 {
                    valid = 0
                    vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                    vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                    viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                    viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                    view_xview[0] += lengthdir_x(viewspeed, viewdir)
                    view_yview[0] += lengthdir_y(viewspeed, viewdir)
                    view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
                }
            }

            with objPicture {
                valid = 0
                vdist = point_distance(x, y, room_width / 2, room_height / 2)
                vdir = point_direction(room_width / 2, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, x, y) * 0.2
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, x, y)
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }

            with objBoss4 {
                valid = 0
                vdist = point_distance(x, y, room_width / 2 - (1 - valid) * 88, room_height / 2)
                vdir = point_direction(room_width / 2 - (1 - valid) * 88, room_height / 2, x, y)
                viewspeed = point_distance(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1
                viewdir = point_direction(view_xview[0] + view_wview[0] / 2 - (1 - valid) * 88, view_yview[0] + view_hview[0] / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180))
                view_xview[0] += lengthdir_x(viewspeed, viewdir)
                view_yview[0] += lengthdir_y(viewspeed, viewdir)
                view_angle[0] = lengthdir_y(vdist * (1 / 160), vdir * 2)
            }

        }
    }
}
xview = view_xview[0]
yview = view_yview[0]
if persistent = 1 and objEffector.fade = 1 
{
    if place_free(x + addx, y) x += addx
    if place_free(x, y + addy) y += addy
    if image_speed = 0 image_index += 0.15
    legindex += 0.4
    exit
}


