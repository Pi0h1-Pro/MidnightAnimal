//FIRST MEETING
if room = rmDream1 {
    if argument0 = 0 {
        my_id.sprite = sprNicoleBlue
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 //sprite=sprNicoleBlue
            sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Oh, you're back...!"
        my_id.line2[0] = ""
        my_id.line1[1] = "It's been such a long time"
        my_id.line2[1] = "since we've last seen you..."
        my_id.line1[2] = "We all heard about what happened..."
        my_id.line2[2] = "I'm sorry. Are you alright?"
        my_id.messages = 2
    }
    if argument0 = 1 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 0
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Ah, welcome back,"
        my_id.line2[0] = "my dear friend."
        my_id.line1[1] = "Much has changed since you've gone..."
        my_id.line2[1] = "We're all glad you've returned."
        my_id.line1[2] = "Oh... and my sincerest condolences"
        my_id.line2[2] = "for your loss. It's never easy."
        my_id.messages = 2
    }
    if argument0 = 2 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 2
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "I don't know you!"
        my_id.line2[0] = ""
        my_id.line1[1] = "Why are you here?"
        my_id.line2[1] = ""
        my_id.line1[2] = "You're no guest"
        my_id.line2[2] = "of mine!"
        my_id.messages = 2
    }
    if argument0 = 3 {
        my_id.sprite = sprNicoleBlue
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Do you really want me to"
        my_id.line2[0] = "reveal who you are?"
        my_id.line1[1] = "Knowing oneself means"
        my_id.line2[1] = "acknowledging ones actions."
        my_id.line1[2] = "As of lately you've done "
        my_id.line2[2] = "some terrible things..."
        my_id.messages = 2
    }

    if argument0 = 4 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 0
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "You don't remember me?"
        my_id.line2[0] = "I'll give you a clue..."
        my_id.line1[1] = "Does April the 3rd mean"
        my_id.line2[1] = "anything to you?"
        my_id.line1[2] = "I believe that was the day"
        my_id.line2[2] = "of our first encounter."
        my_id.line1[3] = "You look like you might be"
        my_id.line2[3] = "remembering something..."
        my_id.line1[4] = "..."
        my_id.line2[4] = ""
        my_id.messages = 4
    }

}


if room = rmDream2 {
    if argument0 = 0 {
        my_id.sprite = sprNicoleBlue
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Oh, it's you again..."
        my_id.line2[0] = ""
        my_id.line1[1] = "It looks like you've been"
        my_id.line2[1] = "busy since we last met."
        my_id.messages = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 0
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "I see that you remember me"
        my_id.line2[0] = "now. Don't you?"
        my_id.line1[1] = "But you still don't know"
        my_id.line2[1] = "who I am."
        my_id.line1[2] = "You don't even know who"
        my_id.line2[2] = "introduced us, do you?"
        my_id.messages = 2
    }
    if argument0 = 2 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 2
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Why did you come back here?"
        my_id.line2[0] = ""
        my_id.line1[1] = "You're not a nice person, "
        my_id.line2[1] = "are you?"
        my_id.line1[2] = "You make me sick!"
        my_id.line2[2] = ""
        my_id.messages = 2
    }
    if argument0 = 3 {
        my_id.sprite = sprNicoleBlue
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "A picture is starting to"
        my_id.line2[0] = "take form here..."
        my_id.line1[1] = "I wonder if it's accurate."
        my_id.line2[1] = ""
        my_id.line1[2] = "Some pieces don't quite"
        my_id.line2[2] = "seem to fit."
        my_id.line1[3] = "Or maybe I just don't"
        my_id.line2[3] = "like the way it looks."
        my_id.messages = 3
    }

    if argument0 = 4 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 0
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "I think our time is up..."
        my_id.line2[0] = "But we'll meet again."
        my_id.line1[1] = "Before you go, here's"
        my_id.line2[1] = "four questions to ponder."
        my_id.line1[2] = "Question number one:"
        my_id.line2[2] = ""
        my_id.line1[3] = "Do you like hurting other"
        my_id.line2[3] = "people?"
        my_id.line1[4] = "Question number two:"
        my_id.line2[4] = ""
        my_id.line1[5] = "Who is leaving messages"
        my_id.line2[5] = "on your answering machine?"
        my_id.line1[6] = "Question number three:"
        my_id.line2[6] = ""
        my_id.line1[7] = "Where are you right now?"
        my_id.line2[7] = ""
        my_id.line1[8] = "And the final question:"
        my_id.line2[8] = ""
        my_id.line1[9] = "Why are we having this"
        my_id.line2[9] = "conversation?"
        my_id.line1[10] = "That's all for now."
        my_id.line2[10] = "See you soon..."
        my_id.messages = 10
    }

}




if room = rmDream3 {
    if argument0 = 0 {
        my_id.sprite = sprNicoleBlue
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }

        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "So, you came back?"
        my_id.line2[0] = ""
        my_id.line1[1] = "How are you feeling?"
        my_id.line2[1] = "You look ill..."
        my_id.line1[2] = "Maybe you should see"
        my_id.line2[2] = "a doctor?"
        my_id.messages = 2
    }
    if argument0 = 1 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 2
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "I told you not to come"
        my_id.line2[0] = "back here!"
        my_id.line1[1] = "I see that my opinion of"
        my_id.line2[1] = "you doesn't matter..."
        my_id.line1[2] = "If you insist on returning"
        my_id.line2[2] = "here, then I should leave!"
        my_id.messages = 2
    }
    if argument0 = 2 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 0
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }

        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Have you thought about"
        my_id.line2[0] = "what I asked you last time?"
        my_id.line1[1] = "I'm not here to give you"
        my_id.line2[1] = "any answers..."
        my_id.line1[2] = "Questions are all I have"
        my_id.line2[2] = "to offer a man like you."
        my_id.messages = 2
    }
    if argument0 = 3 {
        my_id.sprite = sprNicoleBlue
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "If you're not feeling well,"
        my_id.line2[0] = "maybe you should rest?"
        my_id.line1[1] = "Some things work out best"
        my_id.line2[1] = "when you don't try so hard."
        my_id.line1[2] = "No matter who you are,"
        my_id.line2[2] = "Bearing too much weight..."
        my_id.line1[3] = "inevitably leads to the"
        my_id.line2[3] = "collapse of everything."
        my_id.messages = 3
    }

    if argument0 = 4 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 0
        with objLight {
            if color = c_aqua targetstrength = 1
            else targetstrength = 0
        }
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }

        my_id.line1[0] = "Next time we meet will"
        my_id.line2[0] = "be the last. "
        my_id.line1[1] = "I can see it in your eyes."
        my_id.line2[1] = ""
        my_id.line1[2] = "Before you go I'll leave you"
        my_id.line2[2] = "with three predictions..."
        my_id.line1[3] = "'Someone you know is not"
        my_id.line2[3] = "who you think he is.'"
        my_id.line1[4] = "'Something will soon be"
        my_id.line2[4] = "taken from you.'"
        my_id.line1[5] = "'On July the 21st you will"
        my_id.line2[5] = "wake up in a bigger house.'"
        my_id.line1[6] = "That is all."
        my_id.line2[6] = "..."
        my_id.messages = 6
    }
}



if room = rmSequence12c {
    if argument0 = 0 {
        my_id.sprite = sprNicoleBlue
        my_id.index = 3
        my_id.indexspeed = 0
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprNicoleBlue
        }
        my_id.line1[0] = "Looks like it's only"
        my_id.line2[0] = "you and me left now..."
        my_id.line1[1] = "I'm sure you know by now,"
        my_id.line2[1] = "that this won't end well."
        my_id.line1[2] = "Soon you will be all alone."
        my_id.line2[2] = "But that's okay."
        my_id.line1[3] = "Before we say goodbye, I'll"
        my_id.line2[3] = "let you in on a secret..."
        my_id.line1[4] = "What you do from here on,"
        my_id.line2[4] = "won't serve any purpose."
        my_id.line1[5] = "You will never see the"
        my_id.line2[5] = "whole picture..."
        my_id.line1[6] = "And it's all your own fault."
        my_id.line2[6] = "..."
        my_id.line1[7] = "Now it's time for "
        my_id.line2[7] = "you to leave."
        my_id.line1[8] = "There's a warm bed across"
        my_id.line2[8] = "the hall from here..."
        my_id.line1[9] = "And you look like you"
        my_id.line2[9] = "could use some rest."
        my_id.messages = 9
    }
}

