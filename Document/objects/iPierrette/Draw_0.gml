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
			"Ser Pierrette the Resolute, Knight of Blades",
			"Lord of the Vanguard, Marshal to the Throne",
			"Herald of the Valkyrie",
			@"The only child of a legendary infantry officer, Pierrette grew up in the quiet wilderness of the Northern Barrens, where her mother, who had lost her husband to the ruthlessness of the Second Inquisition, attempted to give her a peaceful life away from the looming war. Despite her dismay at her mother's strict isolationism, which resulted in strained relations between the two during her teenage years, she proved herself to be a naturally talented outdoorsman, and demonstrated considerable aptitude as a mechanic. 
    
    At the age of nineteen, she was conscripted for military service, where, despite her own considerable skills as a soldier, she found herself constantly eclipsed by her mother's reputation. Her earlier frustrations soon turned into resentment, and the two lost contact as the Struggles grew more violent and she spent more and more time on combat deployments. Eventually, following her mother's death, Pierrette had her personal records redacted and falsified, finally managing to shake off the shadow her mother had cast over her all her life. Over time however, she has begun to regret that she was never able to make peace with her. 
    
    Easily recognisable by the purportedly unbreakable ballistic shield she wields in combat, Pierrette has become a distinguished icon within the Vanguard, widely respected for her fearlessness, dependability and calm under extraordinary pressure. Just her presence alone on the battlefield significantly boosts unit morale; and she has received numerous commendations over the years for her heroic deeds, including the prestigious Herald of the Valkyrie, a regal honour bestowed upon only a few individuals throughout the history of the Empire. After over a decade of exceptional service, she, like her mother before her, was promoted to the Lord of the Vanguard, the highest distinction a soldier can earn in the Empire. She has in many ways lived up to and even exceeded her mother as both a soldier and a leader.");
}

