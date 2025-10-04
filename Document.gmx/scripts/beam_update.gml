//beam_update(id, x1, y1, x2, y2);

var varQueueX1, varQueueY1, varQueueX2, varQueueY2;

varQueueX = ds_list_find_value(argument0, 2);
varQueueY = ds_list_find_value(argument0, 3);
ds_queue_enqueue(varQueueX, argument3);
ds_queue_enqueue(varQueueY, argument4);

ds_queue_dequeue(varQueueX);
ds_queue_dequeue(varQueueY);

ds_list_replace(argument0, 0, argument1);
ds_list_replace(argument0, 1, argument2);
