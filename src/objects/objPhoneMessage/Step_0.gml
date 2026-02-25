/// @description Populate the list, and scroll through it.

// Create new entry in the list.
if mouse_check_button_pressed(mb_left) {
    ds_list_add(list, text_id[ds_list_size(list)]) // Add text.
    ds_list_add(icons, icon_id[ds_list_size(icons)]) // Add icons.
}

// Scroll through the list.
if mouse_wheel_up() offset = min(offset + 1, (ds_list_size(list) - min(ds_list_size(list), length)))
if mouse_wheel_down() offset = max(offset - 1, 0)


