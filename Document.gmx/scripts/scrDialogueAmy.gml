objEffector.image_xscale=1.5
objEffector.image_yscale=1.5

if room=rmIntermission1 {

//Inside the diner.
if argument0=0 {
my_id.sprite=sprAmyWaitressFace
objEffector.sprite=sprAmyWaitressFace
my_id.line1[0]="You look like you’ve seen"
my_id.line2[0]="better days..."
my_id.messages=0
}

if argument0=1 {
my_id.sprite=sprJohn
objEffector.sprite=sprJohn
my_id.line1[0]="Heh, yeah, I guess that's one "
my_id.line2[0]="way of putting it..."
my_id.messages=0
}

if argument0=2 {
my_id.sprite=sprAmyWaitressFace
objEffector.sprite=sprAmyWaitressFace
my_id.line1[0]="Wanna talk about it?"
my_id.line2[0]="..."
my_id.messages=0
}

if argument0=3 {
my_id.sprite=sprJohn
objEffector.sprite=sprJohn
my_id.line1[0]="Eh... nothing remarkable, just"
my_id.line2[0]="things in general, you know?"
my_id.line1[1]="Same old shit on repeat... at this point, "
my_id.line2[1]="it's all beginning to feel the same. "
my_id.messages=1
}

if argument0=4 {
my_id.sprite=sprAmyWaitressFace
objEffector.sprite=sprAmyWaitressFace
my_id.line1[0]="I'm sorry... this city sure as hell's"
my_id.line2[0]="got a way of grinding people down."
my_id.line1[1]="All this crime, this violence..."
my_id.line2[1]=""
my_id.line1[2]="I've lived here all my life. After all this "
my_id.line2[2]="time, you'd think you'd get used to it, but..."
my_id.line1[3]="*sigh*"
my_id.line2[3]=""
my_id.line1[4]="You know, the saddest part is everyone thought "
my_id.line2[4]="things would get better after the war..."
my_id.line1[5]="...but the way I see it, it's all just"
my_id.line2[5]="just getting worse, day by day."
my_id.line1[6]="It's like all that bloodshed, the uprisings,"
my_id.line2[6]="fuck, the nukes... it was all for nothing."
my_id.line1[7]="Hell of a world... I guess you just gotta hang on."
my_id.line2[7]="Get a grip on something, and just hold on for life."
my_id.messages=7
}

if argument0=5 {
my_id.sprite=sprJohn
objEffector.sprite=sprJohn
my_id.line1[0]="Heh... hell of a world we live in."
my_id.line2[0]="But yeah... I understand."
my_id.line1[1]="It's just that sometimes... "
my_id.line2[1]="..."
my_id.line1[2]="I, uh..."
my_id.line2[2]="..."
my_id.messages=2
}

if argument0=6 {
my_id.sprite=sprAmyWaitressFace
objEffector.sprite=sprAmyWaitressFace
my_id.line1[0]="Hey, listen, if you don't want to"
my_id.line2[0]="talk about it, that's okay."
my_id.messages=0
}

if argument0=7 {
my_id.sprite=sprJohn
objEffector.sprite=sprJohn
my_id.line1[0]="No, no, it's not like that, I just..."
my_id.line2[0]="shit, I'm just tired, I guess."
my_id.line1[1]="It's just been a long day, "
my_id.line2[1]="that's all."
my_id.messages=1
}

if argument0=8 {
my_id.sprite=sprAmyWaitressFace
objEffector.sprite=sprAmyWaitressFace
my_id.line1[0]="Heh, you can say that again. Serious,"
my_id.line2[0]="though you don't look too good..."
my_id.line1[1]="Maybe you should go home"
my_id.line2[1]="and get some sleep..."
my_id.messages=1
}

if argument0=9 {
my_id.sprite=sprJohn
objEffector.sprite=sprJohn
my_id.line1[0]="You know what? That's beginning to "
my_id.line2[0]="sound like a pretty good idea..."
my_id.line1[1]="Time to call it a night, I guess."
my_id.line2[1]="You should get some sleep, too."
my_id.line1[2]="Oh, and by the way, before I forget,"
my_id.line2[2]="Thanks for the coffee. I needed it."
my_id.messages=2
}

if argument0=10 {
my_id.sprite=sprAmyWaitressFace
objEffector.sprite=sprAmyWaitressFace
my_id.line1[0]="Yeah, of course, anytime!"
my_id.line2[0]="It's on the house."
my_id.line1[1]="And have a nice night, alright?"
my_id.line2[1]="Get home safe."
my_id.messages=1
}

if argument0=11 {
my_id.sprite=sprJohn
objEffector.sprite=sprJohn
my_id.line1[0]="Yeah, thanks. You too. "
my_id.line2[0]=""
my_id.messages=0
}
}
