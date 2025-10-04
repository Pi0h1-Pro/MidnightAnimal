/*  // increase timer
  if keyboard_check(ord(global.leftkey)) or
  keyboard_check(ord(global.rightkey)) or
  keyboard_check(ord(global.upkey)) or
  keyboard_check(ord(global.downkey)) then move += 1
  
  // after time, play footstep sound
  if move > ( 32 - (myspeed / 3) ) then
   {
     move = 0
     puddle = instance_place(x,y,objPuddle)
     aquarium = instance_place(x,y,objAquariumWater)
     waterPool = instance_place(x,y,objWaterPool)
     wetSpot = instance_place(x,y,objWetSpot)
     dirt = instance_place(x,y,objDirt)
     snow = instance_place(x,y,objSnow)
   
     if puddle != noone then
      {
        a = sndWaterStep1 
        b = sndWaterStep2 
        c = sndWaterStep3 
        d = sndWaterStep4
      }
      
      else if aquarium !=noone then
     {
        a = sndWaterStep1 
        b = sndWaterStep2 
        c = sndWaterStep3 
        d = sndWaterStep4
      }
      
      else if waterPool !=noone then
     {
        a = sndWaterStep1 
        b = sndWaterStep2 
        c = sndWaterStep3 
        d = sndWaterStep4
      }
      
      else if wetSpot !=noone then
     {
        a = sndWaterStep1 
        b = sndWaterStep2 
        c = sndWaterStep3 
        d = sndWaterStep4
      }
      
     else if dirt !=noone then
     {
        a = sndDirtStep1 
        b = sndDirtStep2 
        c = sndDirtStep3 
        d = sndDirtStep4
      }
      
     else if snow !=noone then
     {
        a = sndSnowStep1 
        b = sndSnowStep2 
        c = sndSnowStep3 
        d = sndSnowStep4
      }
      else 
      {
        a = sndStep1 
        b = sndStep2 
        c = sndStep3 
        d = sndStep4
      }
     ran = irandom(3)
     if ran == 0 then sound = a
     if ran == 1 then sound = b
     if ran == 2 then sound = c
     if ran == 3 then sound = d
     sound_play(sound)
   }
