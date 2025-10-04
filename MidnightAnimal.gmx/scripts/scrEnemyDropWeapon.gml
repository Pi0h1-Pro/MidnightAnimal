                    //HANDLE UNARMED ENEMIES
                    if sprite_index = sprEWalkUnarmed
                    or sprite_index = sprPoliceWalkUnarmed
                    or sprite_index = sprEGangWalkUnarmed
                    or sprite_index = sprEGiveUp
                    or object_index = objDogPatrol
                    or object_index = objEnemyFat
                    or object_index = objEnemyFatLSD
                    or object_index = objEnemyFatStatic
                    noweapon = 1
                    else noweapon = 0
                    scrIdleGetEnemy()

                    if noweapon = 0 {
                        my_id = instance_create(x, y, objWeaponThrow)
                        my_id.direction = other.direction - 70 + random(40)
                        my_id.speed = 2 + random(2)
                        my_id.image_index = scrCurrentWeaponExt(sprite_index)
                        my_id.ammo = ammo
                    }
                    instance_destroy()

