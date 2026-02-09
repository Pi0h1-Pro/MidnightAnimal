// repeat (5) instance_create(random(room_width),0,objSceneFence)
title = global.title;
i = 0;
repeat (string_length(global.title))
{
	rise[i] = -10 - i;
	i += 1;
}
dir = 0;
blend = 0;
prefixblend = 0;
prefix = global.pretitle;
reload = 0;

dir = 0;
i = 0;
alarm[0] = 600;
alarm[1] = 1 + random(100);

// alarm[2] = 600

// Draw stars.
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}

sunalpha = 0;
sunshine = 0;
float = 0;
horizon = 0;

fuchsia = make_color_rgb(255, 0, 128);
aqua = make_color_rgb(0, 255, 210);
addx1 = 0;
addx2 = 0;
myx = 0;
drawpart = 1;

sunalpha = 0;
sunshine = 0;
housex = 0;
dir = 180;
dir2 = 0;
cdir = 0;

scrClearBlood();
if (global.resetstory == 1)
{
	scrResetStory();
}
else
{
	set_automatic_draw(true);
}
global.levels[scrGetCurrentLevel() - 1] = 1;
scrSaveUnlocked();
pointx = -192;
i = 0;

repeat (string_length(global.title))
{
	amount[i] = 1;
	on[i] = 0;
	i += 1;
}

dir = 90;

fade = 0;
c_amount = 0;


hint[0] = "TIP: Cognitive dissonance is an uncomfortable feeling#caused by holding two conflicting ideas simultaneously.";
hint[1] = "TIP: Follow the red arrows.";
hint[2] = "TIP: We cannot escape anguish.#It is what we are.";
hint[3] = "TIP: Don't be afraid of dying.";
hint[4] = "TIP: Recklessness is rewarded.";
hint[5] = "TIP: You cannot understand,#nor do you want to.";
hint[6] = "TIP: Freedom is what you do#with what's been done to you.";
hint[7] = "TIP: All actions are equivalent,#and are on principle doomed to failure.";
hint[8] = "TIP: Animals do not #understand their own actions.";
hint[9] = "TIP: Kill a man, and you are a murderer. #Kill everyone, and you are a god.";
hint[10] = "TIP: Pay attention to details.#Is this really happening?";
hint[11] = "TIP: Murder is nothing more#than a matter of quick reflexes and a steady hand.";
hint[12] = "TIP: There is no difference between#what is right and what is necessary.";
hint[13] = "TIP: Be sure to finish off downed enemies.";

myhint = floor(random(14));

