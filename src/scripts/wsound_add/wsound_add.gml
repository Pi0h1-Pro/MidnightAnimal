/// @description wsound_add(sound, name, artist, duration[sec])
/// @param sound
/// @param  name
/// @param  artist
/// @param  duration[sec]
function wsound_add(argument0, argument1, argument2, argument3) {
	wsound_init();
	ds_list_add(WSOUND.listsound, argument0);
	ds_list_add(WSOUND.listsongname, argument1);
	ds_list_add(WSOUND.listartist, argument2);
	ds_list_add(WSOUND.listsongduration, argument3);



}
