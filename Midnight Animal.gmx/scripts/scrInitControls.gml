move[0]="Walk"
move[1]="Interact"
move[2]="Punch"
move[3]="Pick Up"
move[5]="Shoot Weapon"
move[4]="Swing Weapon"
move[6]="Throw Weapon"
move[7]="Drop Weapon"
move[8]="Finish Enemy"
move[9]="Look"
move[10]="Advance Dialogue"
move[11]="Skip Dialogue"
move[12]="Pause Menu"
move[13]="Restart"
if global.xbox {
control[0]="Left Thumbstick"
control[1]="Left/Right Trigger"
control[2]="Right Trigger"
control[3]="Left Trigger"
control[5]="Right Trigger"
control[4]="Right Trigger"
control[6]="Left Trigger"
control[7]="N/A"
control[8]="A Button"
control[9]="Left Button"
control[10]="A Button"
control[11]="Hold Start"
control[12]="Back"
control[13]="Start"
} else {
control[0]="W, A, S, D"
control[1]="Left/Right Mouse Button"
control[2]="Left Mouse Button"
control[3]="Right Mouse Button"
control[5]="Left Mouse Button"
control[4]="Left Mouse Button"
control[6]="Right Mouse Button"
control[7]="Hold Right Mouse Button"
control[8]="Space"
control[9]="Shift"
control[10]="Left/Right Mouse Button"
control[11]="Hold Right Mouse Button"
control[12]="ESC"
control[13]="R"
}




if global.xbox=1 condition[0]="" else condition[0]="[enter] to reconfigure"
condition[1]="(story object)"
condition[2]="(unarmed)"
condition[3]="(close to weapon)"
condition[5]="(firearm)"
condition[4]="(melee weapon)"
condition[6]="(when armed)"
condition[7]="(when armed)"
condition[8]="(close to enemy)"
condition[9]=""
condition[10]="(cutscene)"
condition[11]="(cutscene)"
condition[12]=""
condition[13]="[enter] to reconfigure"

sprite[0]=sprPWalkUnarmed
sprite[1]=sprPWalkUnarmed
sprite[2]=sprPAttackPunch
sprite[3]=sprPWalkUnarmed
sprite[4]=sprPAttackMachete
sprite[5]=sprPAttackShotgun
sprite[6]=sprPWalkKnife
sprite[7]=sprPWalkBat
sprite[8]=sprPAttackBash
sprite[9]=sprPAttackAK
sprite[10]=sprPWalkUnarmed
sprite[11]=sprPWalkUnarmed
sprite[12]=sprPWalkUnarmed
sprite[13]=sprPWalkUnarmed
