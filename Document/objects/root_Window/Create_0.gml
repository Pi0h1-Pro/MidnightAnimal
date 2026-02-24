debug_draw_boxes = false;

isInsideWindow = false;

closeIconPanel = root_sprWinExterior;
draggingWindow = false;

x1_windowArea = 0;
y1_windowArea = 0;
x2_windowArea = 0;
y2_windowArea = 0;

x1_titleArea = 0;
y1_titleArea = 0;
x2_titleArea = 0;
y2_titleArea = 0;

x1_buttonArea = 0;
y1_buttonArea = 0;
x2_buttonArea = 0;
y2_buttonArea = 0;

image_xscale = 64;
image_yscale = 64;

depth = root_Menu.depth - 1;

root_WindowWidth = sprite_get_width(root_sprWinExterior)*image_xscale;
root_WindowHeight = sprite_get_height(root_sprWinExterior)*image_yscale;

x = (win_w/2)-(root_WindowWidth/2);
y = (win_h/2)-(root_WindowHeight/2);

//// Colors
// base colors
c_BaseText			=	make_colour_rgb(216, 222, 211);	// used in text windows, lists
c_BrightBaseText	=	make_colour_rgb(255, 255, 255);	// brightest text
c_SelectedText		=	make_colour_rgb(255, 255, 255);	// selected text
c_DimBaseText		=	make_colour_rgb(160, 170, 149);	// dim base text
c_LabelDimText		=	make_colour_rgb(160, 170, 149);	// used for info text
c_ControlText		=	make_colour_rgb(216, 222, 211);	// used in all text controls
c_BrightControlText	=	make_colour_rgb(196, 181, 080);	// use for selected controls
c_DisabledText1		=	make_colour_rgb(117, 128, 111);	// disabled text
c_DisabledText2		=	make_colour_rgb(040, 046, 034);	// overlay color for disabled text (to give that inset look)
c_DimListText		=	make_colour_rgb(117, 134, 102);	// offline friends, unsubscribed games, etc.

// background colors
c_ControlBG			=	make_colour_rgb(090, 106, 080);	// background color of controls
c_ControlDarkBG		=	make_colour_rgb(090, 106, 080);	// darker background color; used for background of scrollbars
c_WindowBG			=	make_colour_rgb(000, 000, 000);	// background color of text edit panes (chat, text entries, etc.)
c_SelectionBG		=	make_colour_rgb(149, 136, 049);	// background color of any selected text or menu item
c_SelectionBG2		=	make_colour_rgb(040, 046, 034);	// selection background in window w/o focus
c_ListBG			=	make_colour_rgb(062, 070, 055);	// background of server browser, buddy list, etc.

// titlebar colors
c_TitleText			=	make_colour_rgb(255, 255, 255);
c_TitleDimText		=	make_colour_rgb(255, 000, 000);
c_TitleBG			=	make_colour_rgb(255, 000, 000);
c_TitleDimBG		=	make_colour_rgb(255, 000, 000);

// slider tick colors
c_SliderTickColor	=	make_colour_rgb(127, 140, 127);
c_SliderTrackColor	=	make_colour_rgb(031, 031, 031);

// border colors
c_BorderBright		=	make_colour_rgb(000, 255, 000);	// the lit side of a control
c_BorderDark		=	make_colour_rgb(000, 255, 000);	// the dark/unlit side of a control
c_BorderSelection	=	make_colour_rgb(000, 255, 000);	// the additional border color for displaying the default/selected button

c_team0				=	make_colour_rgb(125, 165, 210);
c_team1				=	make_colour_rgb(200, 090, 070);
c_team2				=	make_colour_rgb(225, 205, 045);
c_team3				=	make_colour_rgb(145, 215, 140);
c_team4				=	make_colour_rgb(255, 170, 000);