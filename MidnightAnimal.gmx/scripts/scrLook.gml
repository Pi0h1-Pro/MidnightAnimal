var lx1, ly1, lx2, ly2, i, xadd, yadd, dir, stop;
i = 0
lx1 = x
ly1 = y
lx2 = argument0
ly2 = argument1
check = 0
dir = point_direction(x, y, argument0, argument1)
xadd = lengthdir_x(argument2, dir)
yadd = lengthdir_y(argument2, dir)
with objFurniture solid = 0
stop = 0
with objDoorV {
    test = solid solid = 1
}
with objDoorV2 {
    test = solid solid = 1
}
scrMoveSolidOn()
with objWindow solid = 0
with objRenovationWallV solid = 0
with objRenovationWallH solid = 0
with objWallSoftH solid = 1
with objWallSoftV solid = 1
with objChainFenceV solid = 1
with objChainFenceH solid = 1
repeat round((point_distance(x, y, argument0, argument1) - 8) * (1 / argument2)) {
    if stop = 0 {
        if scrSeeThroughCollision(lx1, ly1) {
            if check = 0 check = 2
        }
        if !place_free(lx1, ly1) {
            check = 1 stop = 1
        }
    }
    lx1 += xadd
    ly1 += yadd
}
with objWallSoftH solid = 0
with objWallSoftV solid = 0
with objChainFenceV solid = 1
with objChainFenceH solid = 1
with objWindow solid = 1
//scrMoveSolidOn()
with objFurniture solid = 1
with objDoorV solid = test
with objDoorV2 solid = test
return check
