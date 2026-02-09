if room = rmTrainstationDownstairs or room = rmPoliceHQFloor3 or instance_exists(objVan) or room = rmPhoneHomUpstairs clear = 1
if instance_number(objEnemy) 
+ instance_number(objKnockedOut) 
+ instance_number(objECrawl) 
+ instance_number(objMiscEnemy) 
+ instance_number(objBoss) 
+ instance_number(objEHideM16) 
+ instance_number(objEBullet) = 0 {
    test = 1
    /*
    if room = rmHotelEntrance and global.maskindex != 2 {
        if objFatmanEating.sprite_index = sprFatmanEating or(objFatmanEating.sprite_index = sprFatmanEatingGiveUp and global.maskindex != 2) or objFatmanTelephone.sprite_index = sprFatmanTelephone or(objFatmanTelephone.sprite_index = sprFatmanTelephoneGiveUp and global.maskindex != 2) test = 0
    }
    
    if room = rmHotelSuite {
        if objFatmanShit.sprite_index = sprFatmanShit or(objFatmanShit.sprite_index = sprFatmanShitGiveUp and global.maskindex != 2) test = 0
    }
    */
    if test = 1 {
        if clear = 0 and global.done = 0 {
            clear = 1
            my_id = instance_create(x, y, objCheckpoint)
            my_id.text = "Area Clear"

        }
    }
} 

else clear = 0

