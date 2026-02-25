/// @description  Burn.
if hp < max_hp * 0.5 {
    if burning = 0 {
        create_damage_general(random(3), global.c_fire, "BURNING!", 1, x + choose(-random(24), random(24)), y - 5)
        affected = 1
        burning = 1
    }
}
if round(random(5)) = 2 { 
    objEffector.hitalpha = 1
    sound_ps(sndHitMarker)
    global.combo += 1
    global.combotime = 240
    hp -= 2
    create_damage_general(random(3), global.c_fire, "2", "1", x + choose(-random(24), random(24)), y - 5)
}

if hp < 0 scrEnemyGetBurned()

