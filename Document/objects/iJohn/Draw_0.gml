/// @description  Draw effect on mouse-over.
if (unlocked == 0)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_dkgray, 1);
}
else
{
	if (mouseOver == 0)
		draw_self();
	else
	{
		draw_sprite(icoFrame, 0, x, y);
		draw_self();
	}
	
	/// Draw text.
	if (mouseOver)
		draw_character_text(
			"Wardens",
			"The Wardens are responsible for overseeing the security and welfare of both the incumbent Empress, and the Empire as a whole. They are widely regarded as some of the most fearsome and capable warriors in all the lands, handpicked by the Empress herself. During peacetime, they serve a wide variety of civil duties, and are often responsible for handling sensitive diplomatic and investigative situations.",
			"John the Forsaken",
			"Grand Inquisitor of the Court, Seneschal of the Throne",
			"Formerly Lord Inquisitor Ser John the Relentless, Knight of Vessels",
			@"Once a high-ranking reconnaissance officer and tracker in the Vanguard during the Third Inquisition, John was widely regarded and feared for both his extraordinarily potent psychic acuity, which grants him the ability to recreate, channel and even alter psychic resonances; and his penchant for unconventional and often reckless approaches.
    
    Following the end of the Struggles, amidst a good deal of controversy, he was advanced to the then-nascent office of Lord Inquisitor by the Empress, responsible for tracking and eliminating high-value targets left over from the war. This position, however, would be woefully short-lived: only a year after his promotion, an unspeakable incident occurred during an operation under his command, which resulted in extraordinary casualties. Despite unclear details, the Empress eventually caved into public demand for restitution, and John was formally stripped of his ranks, and sent into anathema in the outermost territories. After a decade in exile, he has since been called back to Carcosa under orders of the Crown Princess, who claims to have met him in a strange dream. 
    
    Once a close friend of the Empress herself, having fought by her side during the Struggles, his return has been met with a good degree of unease and uncertainty, and has been entirely obscured from public attention. His troubled history, combined with his apathetic demeanour and a reputation for strange and highly unorthodox methodologies makes him a figure of considerable contention within the Empire. Nevertheless, few of his critics can deny his remarkable talents, and begrudgingly must admit his many considerable successes. Although there are rumours that his powers have begun to fade over time with disuse, he is still a considerable force to be reckoned with — a fact that the Empress does not take lightly. She has heard whispers that there are things about him which even she does not yet know: it's better to keep him close, under her gaze, than to risk losing sight of him again.");
}

