movex=0
movey=0
nextroom=room_previous(room)
addy=0
addx=-2
while place_free(x,y-2) image_yscale+=0.25

/*
while place_free(x,y+1) image_yscale+=0.25
addx=-1
addy=0
movex=256
movey=0
nextroom=room_next(room)