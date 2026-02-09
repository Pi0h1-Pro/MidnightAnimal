alpha = random(0.8) + 0.2; // Determining a random alpha for the stars.
image_speed = .3 + random(.4);

// These variable will store the position of the ship relevant to the room size and the amountofmove varable.
movex = 0;
movey = 0;

// This makes 1 in 10 stars not move at all and have an alpha of 2.
// Amountofmove determines how fast the stars will move on screen.
if (random(100) > 10)
{
	ok = true; // If ok = true then the stars will  move.
	amountofmove = random(1000); // This will determine how much the star moves reletive to the view.
	
	// The lower this number the less movement there will be and so the star will appear further away.
	depth = amountofmove - amountofmove * 2;
}
else
{
	alpha = 0.2; // How transparent the star will be this gives extra depth to the stars.
	ok = false; // If ok = false then stars will not move. These stars will appear the most distant
}

// This sets the depth of the star

z = random(300) - 400;
scale = 1 + (z / 500);
image_alpha = scale;

