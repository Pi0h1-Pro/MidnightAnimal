centerx = view_wview[0] * 0.45
centery = view_hview[0] * 0.45
n = 0
repeat(30) {
    myx[n] = centerx + lengthdir_x(360, n * 12)
    myy[n] = centery + lengthdir_y(360, n * 12)
    n += 1
}
xfactor = 0
yfactor = 0

