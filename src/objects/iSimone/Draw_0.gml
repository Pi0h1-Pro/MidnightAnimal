/// @description  Draw effect on mouse-over.
if unlocked = 0 {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_dkgray, 1)
} else {
    if mouseOver = 0 draw_self() else {
        draw_sprite(icoFrame, 0, x, y)
        draw_self()
    }
    
    /// Draw text.
    if mouseOver draw_character_text(
    "Wardens", 
    "The Wardens are responsible for overseeing the security and welfare of both the incumbent Empress, and the Empire as a whole. They are widely regarded as some of the most fearsome and capable warriors in all the lands, handpicked by the Empress herself. During peacetime, they serve a wide variety of civil duties, and are often responsible for handling sensitive diplomatic and investigative situations.",
    "Ser Simone of the Inspectorate, Knight of Staves",
    "Chief Inspector General of the Court, Constable to the Throne",
    "Formerly Black Mamba, the Vengeful Spirit of the Badlands",
    @"A legendary gunslinger widely feared for her impeccable aim and speed, Simone was born from the tides of catastrophe. Little is known about her early life, save for the fact that at some point, she became a child soldier under the Banner of Heaven, a dissident paramilitary nation of dispossessed soldiers dedicated to realising a world defined by perpetual warfare. It was here that her exceptional accuracy as a shooter caught the eye of their leader, One-Eyed Jack, a legendary mercenary who was rumoured to have been cast out and betrayed by his own nation centuries prior, and who purportedly had cheated death countless times. He took her in as his personal ward and honed her skills to perfection. Over time, her fearsome speed and skill became known across the land, earning her the name Black Mamba. 
    
    Her fame would also lead to the downfall of her tribe, however. After one particularly spectacular victory during the Third Inquisition, she was tracked back to the Banner of Heaven’s headquarters during a celebration by an unknown agent of the Empire, who proceeded to assassinate One-Eyed Jack and his lieutenants. The assassin then managed to escape in the ensuing chaos under the cover of a freak tornado, which dealt devastating damage to the remaining soldiers. With most of their members killed by the tornado and their leadership dead, the tribe dissipated and scattered into the mountains, and Simone, having nowhere else to go, fled into the wilderness of the Badlands. She became a nomadic saboteur-for-hire, taking on the name and clothing of her former mentor in order to protect herself. It was during this time as well that she acquired her signature revolver, the Tornado, looted from the body of one of One-Eyed Jack's most trusted lieutenants. 
    
    After several years of increasingly audacious acts of violence, she was eventually hunted down by the infamous Imperial tracker John the Relentless, who had been sent to investigate rumours of One-Eyed Jack's apparent survival, and assassinate him for good if necessary. Having discovered that not only was his target an impostor, but still a child, barely sixteen years old, he decided to spare her out of sympathy and bring her back to Carcosa, where he convinced the Empress to accept the girl under his watch. Over the next several years, he served as a personal instructor to her, training her in the techniques and methodologies of his trade and grooming her into a highly competent and fearsome tracker in her own right. Following her mentor's exile, she took over his post as the incumbent Lord Inquisitor, serving as an envoy of the Empire to the borderlands; and was eventually promoted to Chief Inspector General of the Court.")
}


