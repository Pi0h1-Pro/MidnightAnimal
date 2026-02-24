sprite_index = face[page];

if (sprite_index = sprFaceErickVRThinking) {
	image_index = 0;
}

if (wait > 0) {wait -= 1;}

if  (reload > 0) {
	reload--;
}

if skipTimer <= 0 
{
    finished = 1;
}

if scrErickTalkingSprites(face[page]) {
    phonecolor1 = merge_color(phonecolor1, colorErick1, 0.05);
    phonecolor2 = merge_color(phonecolor2, colorErick2, 0.05);
    textcolor1 = txtColorErick;
}
else if scrBenTalkingSprites(face[page]) {
    phonecolor1 = merge_color(phonecolor1, colorBen1, 0.05);
    phonecolor2 = merge_color(phonecolor2, colorBen2, 0.05);
    textcolor1 = txtColorBen;
}
else if scrBossTalkingSprites(face[page]) {
    phonecolor1 = merge_color(phonecolor1, colorBoss1, 0.05);
    phonecolor2 = merge_color(phonecolor2, colorBoss2, 0.05);
    textcolor1 = txtColorBoss;
}
else if scrScorpionTalkingSprites(face[page]) {
    phonecolor1 = merge_color(phonecolor1, colorScorp1, 0.05);
    phonecolor2 = merge_color(phonecolor2, colorScorp2, 0.05);
    textcolor1 = txtColorScorp;
}
else if scrPizzaGirlTalkingSprites(face[page]) {
    phonecolor1 = merge_color(phonecolor1, colorPizza1, 0.05);
    phonecolor2 = merge_color(phonecolor2, colorPizza2, 0.05);
    textcolor1 = txtColorPizza;
}
else if scrRichardTalkingSprites(face[page]) {
	phonecolor1 = merge_color(c_aqua, c_fuchsia, 0.5+lengthdir_x(0.5,global.dir*2));
    phonecolor2 = c_black;
    textcolor1 = txtColorPizza;
}
else {
    phonecolor1 = merge_color(phonecolor1, colorDefault1, 0.05);
    phonecolor2 = merge_color(phonecolor2, colorDefault2, 0.05);
    textcolor1 = txtColorDefault;
}

if (Input.accept.Released()) {
    if wait > 0 exit;

    if (finished)
        exit;
    
    if (page < pageTotal)
    {
        page += 1;
        wait = 10
    }
    
    if (page == pageTotal)
    {
        page -= 1;
        finished = true;
    }
}

if (Input.cancel.Down()) {
    skipTimer -= 1;
}

if (Input.cancel.Released()) {
    skipTimer = 100;
}