if keyboard_check_pressed(ord("W")){select-=1};
if keyboard_check_pressed(ord("S")){select+=1};

if select>ds_list_size(levelList)-1 select=0;
if select<0 select=ds_list_size(levelList)-1;


