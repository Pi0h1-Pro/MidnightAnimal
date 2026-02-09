//beam_draw(id, colhead, coltail, alphahead, alphatail);
var varQueueX1, varQueueY1, varQueueX2, varQueueY2, varSize, xx1, yy1, xx2, yy2, i;
xx1 = ds_list_find_value(argument0, 0);
yy1 = ds_list_find_value(argument0, 1);
varQueueX = ds_list_find_value(argument0, 2);
varQueueY = ds_list_find_value(argument0, 3);

varSize = ds_queue_size(varQueueX);
draw_primitive_begin(pr_trianglestrip);
    
    for(i = 0; i < varSize; i += 1){
        xx2 = ds_queue_dequeue(varQueueX);
        yy2 = ds_queue_dequeue(varQueueY);
        draw_vertex_color(xx1, yy1, merge_color(argument2, argument1, i / varSize), (argument3 - argument4) * (i + 1) / varSize + argument4);
        draw_vertex_color(xx2, yy2, merge_color(argument2, argument1, i / varSize), (argument3 - argument4) * (i + 1) / varSize + argument4);
        ds_queue_enqueue(varQueueX, xx2);
        ds_queue_enqueue(varQueueY, yy2);
    }
