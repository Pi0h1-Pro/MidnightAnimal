// if round(random(80)) = 2 objBGStorm.thunder = 1
/* if objPlayer.y < y2 {
    if song = 0 {
        scrPlaySong(working_directory + '\Dust.mp3')
        song = 1
    }
    objPlayer.active = 0
    objPlayer.aimon = 0
    objPlayer.dir = 90
    if objPlayer.y > -32 objPlayer.y -= 1.5
    objPlayer.image_index += 0.1
    objPlayer.legindex += 0.2
    if objPlayer.y > view_hview[0] / 2 scrCameraPan(objPlayer.x, objPlayer.y)
    else scrCameraPan(objPlayer.x, view_hview[0] / 2)
    if objPlayer.y < -32 {
        if objLSD.on = 0 {
            objLSD.on = 1 objLSDBlend.on = 1
        }
    }
}

/* */
/*  */
