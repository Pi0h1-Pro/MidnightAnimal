function state_execute() {
	if(is_callable(state) && (state >= 10000)) script_execute(state) else state_switch(ds_map_find_first(state_map));



}
