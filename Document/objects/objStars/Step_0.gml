// Here we work out the movement of the star when the ship moves around.
if (ok == true) // Checks if we want this star to move.
{
	movex = __view_get( e__VW.XView, 0 ) / room_width * amountofmove; // This calculates the x movement for the star.
	movey = __view_get( e__VW.YView, 0 ) / room_height * amountofmove; // This calculates the y movement for the star.
}

