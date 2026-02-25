/// @description Initialise general variables.

// Set offset.
offset = 0

// Maximum number of messages displayed at once.
length = 3

// Initialise list to store text.
list = ds_list_create()

// Initialise list to store icon.
icons = ds_list_create()

// Placeholder message text.
text_id[0] = "" 

// Placeholder icon.
icon_id[0] = "" 

// Current character.
char = 0 

// Current message. 
state = 0 

// Finish one sentence and move to the next.
phase = 0 


///Initialise custom properties.

padding = 4             // char padding.
max_width = 640         // Maximum width of char box.
c_interior = c_black    // Interior colour of char box.
text_col = c_white      // char colour.
key = mb_left           // Interaction key.
text_speed = 1          // Characters draw per step.

width_shift = 0         // Smooth text box size for horizontal increase/decrease.
height_shift = 0        // Smooth text box size for vertical increase/decrease.

fade = 0                // Controls text box fade.
alpha = 0               // Controls transparency, which is altered with 'phase'.


