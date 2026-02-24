//@description Toggle Debug Overlay
if (!isDevMode) exit;
show_debug_overlay(!is_debug_overlay_open(),true);
show_debug_log(is_debug_overlay_open());