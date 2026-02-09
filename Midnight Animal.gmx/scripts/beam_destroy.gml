//beam_destroy(id);

ds_queue_destroy(ds_list_find_value(argument0, 2));
ds_queue_destroy(ds_list_find_value(argument0, 3));
ds_list_destroy(argument0);
