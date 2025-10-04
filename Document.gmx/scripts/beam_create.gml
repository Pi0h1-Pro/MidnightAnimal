//beam_create(size, x1, y1, x2, y2);
var varList, i, j;

if (argument0 == 0) {
    show_error("beam_create(): size of beam cannot be zero", true);
}

varList = ds_list_create();
ds_list_add(varList, argument1);
ds_list_add(varList, argument2);
ds_list_add(varList, ds_queue_create());
ds_list_add(varList, ds_queue_create());

repeat(argument0) {
    ds_queue_enqueue(ds_list_find_value(varList, 2), argument3);
    ds_queue_enqueue(ds_list_find_value(varList, 3), argument4);
}

