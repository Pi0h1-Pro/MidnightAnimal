//Sequence 1.
if room = rmSequence1 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
        my_id.line2[0] = "*BEEP*"
        my_id.line1[1] = "HI THIS IS 'TIM' AT THE"
        my_id.line2[1] = "BAKERY. THE COOKIES THAT"
        my_id.line1[2] = "YOU ORDERED SHOULD BE"
        my_id.line2[2] = "DELIVERED BY NOW..."
        my_id.line1[3] = "A LIST OF INGREDIENTS ARE"
        my_id.line2[3] = "INCLUDED... MAKE SURE"
        my_id.line1[4] = "THAT YOU READ THEM"
        my_id.line2[4] = "CAREFULLY!"
        my_id.line1[5] = "..."
        my_id.line2[5] = "*CLICK*"
        my_id.messages = 5
        global.phone = 1
    }
    if argument0 = objOpenedBox {
        my_id.sprite = sprMaskLetter
        with objEffector sprite = sprMaskLetter
        my_id.line1[0] = "The target is a briefcase."
        my_id.line2[0] = "Discretion is of essence."
        my_id.line1[1] = "Leave target at point"
        my_id.line2[1] = "F-32, inside the dumpster."
        my_id.line1[2] = "Failure is not an option."
        my_id.line2[2] = "We'll be watching you."
        my_id.messages = 2
        global.package = 1
    }
}

//Sequence 2.
if room = rmSequence2 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
        my_id.line2[0] = "*BEEP*"
        my_id.line1[1] = "HELLO, IT'S 'LINDA'..."
        my_id.line2[1] = "I NEED A BABYSITTER"
        my_id.line1[2] = "RIGHT AWAY. GOT A FEW"
        my_id.line2[2] = "KIDS THAT NEED TO BE"
        my_id.line1[3] = "DISCIPLINED HERE. I'M"
        my_id.line2[3] = "AT EAST 7TH STREET."
        my_id.line1[4] = "MAKE SURE YOU HAVE A"
        my_id.line2[4] = "LONG TALK WITH THEM,"
        my_id.line1[5] = "I REALLY NEED SOMEONE"
        my_id.line2[5] = "TO GET THROUGH TO"
        my_id.line1[6] = "THESE RASCALS. AND LIKE"
        my_id.line2[6] = "LAST TIME..."
        my_id.line1[7] = "PLEASE BE discreet!"
        my_id.line2[7] = "*CLICK*"
        my_id.messages = 7
        global.done = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprForms


        with objEffector sprite = sprForms
        my_id.line1[0] = "Thank you for subscribing"
        my_id.line2[0] = "to our newsletter!"
        my_id.line1[1] = "We appreciate your interest"
        my_id.line2[1] = "in our cause."
        my_id.line1[2] = "America is a tune. It"
        my_id.line2[2] = "must be sung together."
        my_id.line1[3] = "-50 blessings"
        my_id.line2[3] = ""
        my_id.messages = 3
    }

}

//Sequence 3.
if room = rmSequence3 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
        my_id.line2[0] = "*BEEP*"
        my_id.line1[1] = "This is 'Thomas' from the"
        my_id.line2[1] = "methadone clinic."
        my_id.line1[2] = "We've scheduled a short"
        my_id.line2[2] = "meeting for you tonight."
        my_id.line1[3] = "We're at NW 184th Street,"
        my_id.line2[3] = "Apt 105. And don't worry..."
        my_id.line1[4] = "We know discretion is of"
        my_id.line2[4] = "importance to our clients."
        my_id.line1[5] = "..."
        my_id.line2[5] = "*CLICK*"
        my_id.messages = 5
        global.done = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...SIX BODIES FOUND ON"
        my_id.line2[0] = "East 7th St..."
        my_id.line1[1] = "...POLICE SUSPECTS TIES TO"
        my_id.line2[1] = "ILLEGAL DRUG TRADE..."
        my_id.messages = 1
    }
    if argument0 = 2 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...WITNESS CLAIMS SEEING"
        my_id.line2[0] = "MONSTER LEAVING THE SCENE..."
        my_id.messages = 0
    }
}

//Sequence 4.
if room = rmSequence4 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "Hi, it's 'Kate' from Hotline"
        my_id.line2[0] = "Miami's Dating Service."
        my_id.line1[1] = "We have set up a date for"
        my_id.line2[1] = "you this evening."
        my_id.line1[2] = "SHE'LL BE WAITING FOR YOU"
        my_id.line2[2] = "AT SOUTHWEST 53rd PLACE."
        my_id.line1[3] = "As usual, make sure you"
        my_id.line2[3] = "wear something fancy."
        my_id.line1[4] = "..."
        my_id.line2[4] = "*CLICK*"
        my_id.messages = 4
        global.done = 1
    }

    if argument0 = 1 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...ANOTHER MASSACRE HAS BEEN"
        my_id.line2[0] = "REPORTED ON NW 184th St..."
        my_id.line1[1] = "...STRING OF GANG RELATED"
        my_id.line2[1] = "VIOLENCE THROUGHOUT MIAMI..."
        my_id.messages = 1
    }
}


//Sequence 5.
if room = rmSequence5 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "Good evening!"
        my_id.line2[0] = "This is 'Blake' speaking."
        my_id.line1[1] = "We have a job for you."
        my_id.line2[1] = "There's a power outage..."
        my_id.line1[2] = "Over on 24th NE St. We want"
        my_id.line2[2] = "you to take care of it."
        my_id.line1[3] = "We already sent someone"
        my_id.line2[3] = "over a while ago..."
        my_id.line1[4] = "But it seems he didn't"
        my_id.line2[4] = "do a very good job."
        my_id.line1[5] = "Head over there right away!"
        my_id.line2[5] = "They're expecting you."
        my_id.line1[6] = "Keep it quick and clean!"
        my_id.line2[6] = "*CLICK*"
        my_id.messages = 6
        global.done = 1
    }

    if argument0 = 1 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...MOVIE PRODUCER FOUND "
        my_id.line2[0] = "DEAD IN VILLA LAST NIGHT..."
        my_id.line1[1] = "...SURVEILLANCE TAPE REVEALS"
        my_id.line2[1] = "MASKED ASSAILANT..."
        my_id.line1[2] = "...UNIDENTIFIED FEMALE"
        my_id.line2[2] = "ABDUCTED FROM THE SCENE..."
        my_id.messages = 2
    }
}

//Sequence 6.
if room = rmSequence6 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "IT'S 'DAVE' FROM MIAMI PEST"
        my_id.line2[0] = "CONTROL. WE NEED YOU."
        my_id.line1[1] = "A CLIENT AT SW 104th STREET"
        my_id.line2[1] = "IS HAVING VERMIN PROBLEMS."
        my_id.line1[2] = "TRY TO HANDLE IT AS QUICK"
        my_id.line2[2] = "AND SWIFT AS YOU CAN."
        my_id.line1[3] = "SOMEONE ELSE WILL CLEAN UP"
        my_id.line2[3] = "FOR YOU AFTER YOU LEAVE."
        my_id.line1[4] = "Make sure not to bother any"
        my_id.line2[4] = "of the neighbors."
        my_id.line1[5] = "..."
        my_id.line2[5] = "*CLICK*"
        my_id.messages = 5
        global.done = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...BOMB BLAST HEARD ALL THE"
        my_id.line2[0] = "WAY DOWN TOWN..."
        my_id.line1[1] = "...CASUALTIES STILL UNKNOWN."
        my_id.line2[1] = "CHARRED REMAINS..."
        my_id.line1[2] = "...SEVERAL MASKED SUSPECTS"
        my_id.line2[2] = "WITNESSED AT THE..."
        my_id.messages = 2
    }
}

//Sequence 7.
if room = rmSequence7 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "Hi it's 'Don' from Hotel"
        my_id.line2[0] = "Blue, we need you tonight!"
        my_id.line1[1] = "Our receptionist went home"
        my_id.line2[1] = "due to stomach problems..."
        my_id.line1[2] = "And we have some VIPs who'll"
        my_id.line2[2] = "be staying with us today!"
        my_id.line1[3] = "Make sure you give them a"
        my_id.line2[3] = "great stay..."
        my_id.line1[4] = "That will be your top"
        my_id.line2[4] = "priority this evening!"
        my_id.line1[5] = "Now get going!"
        my_id.line2[5] = "*CLICK*"
        my_id.messages = 5
        global.done = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...MASK MURDERS CONTINUES."
        my_id.line2[0] = "LAST NIGHT A DOZEN BODIES..."
        my_id.line1[1] = "...AGAIN CONNECTIONS TO THE"
        my_id.line2[1] = "LOCAL RUSSIAN MAFIA..."
        my_id.line1[2] = "...POLICE DENIES RUMORS OF"
        my_id.line2[2] = "A VIGILANTE MOVEMENT...."
        my_id.messages = 2
    }
    if argument0 = 2 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...MAYOR OF MIAMI SUGGESTS"
        my_id.line2[0] = "CURFEW IN MIAMI..."
        my_id.line1[1] = "...'WE'RE BASICALLY IN A"
        my_id.line2[1] = "A STATE OF EMERGENCY'..."
        my_id.messages = 1
    }

}

//Sequence 7 downstairs.
if room = rmSequence7Downstairs {
    my_id.sprite = sprDennisFace
    my_id.indexspeed = 0
    with objEffector {
        image_xscale = 1.5 image_yscale = 1.5 sprite = sprDennisFace
    }
    my_id.line1[0] = "..."
    my_id.line2[0] = ""
    my_id.messages = 0
}

//Sequence 8.
if room = rmSequence8 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "It's 'Harry' from management."
        my_id.line2[0] = "We have a problem!"
        my_id.line1[1] = "There's big mess over by"
        my_id.line2[1] = "the condos on 122nd SE st!"
        my_id.line1[2] = "One of the residents' water"
        my_id.line2[2] = "pipe burst, wet all over!"
        my_id.line1[3] = "The whole building is gonna"
        my_id.line2[3] = "be flooded soon..."
        my_id.line1[4] = "Hope you can get on this"
        my_id.line2[4] = "shit ASAP... Don't go easy"
        my_id.line1[5] = "on the mop!"
        my_id.line2[5] = "*CLICK*"
        my_id.messages = 5
        global.done = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprClueBig
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprClueBig
        }
        my_id.line1[0] = "...SHOOT OUT AT HOTEL BLUE"
        my_id.line2[0] = "EARLY LAST EVENING..."
        my_id.line1[1] = "...THREE POLITICIANS AMONG"
        my_id.line2[1] = "THE CASUALTIES..."
        my_id.line1[2] = "...HEAVY BLOW FOR THE RUSO-"
        my_id.line2[2] = "AMERICAN COALITION..."
        my_id.line1[3] = "...SEVERAL VICTIMS TIED TO"
        my_id.line2[3] = "CRIMINAL NETWORK..."
        my_id.messages = 3
    }

}

//Sequence 9.
if room = rmSequence9 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "Hi, it's 'Pat' from The Club."
        my_id.line2[0] = "We want you to DJ tonight."
        my_id.line1[1] = "YOU'RE FREE TO PLAY ANY"
        my_id.line2[1] = "KIND OF MUSIC YOU WANT."
        my_id.line1[2] = "BEER IS ON THE HOUSE!"
        my_id.line2[2] = ""
        my_id.line1[3] = "We're on 212 NE 24th Street."
        my_id.line2[3] = "Dress to kill! See ya..."
        my_id.line1[4] = "..."
        my_id.line2[4] = "*CLICK*"
        my_id.messages = 4
        global.done = 1
    }
}

//Sequence 10.
if room = rmSequence10 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
        my_id.line2[0] = "*BEEP*"
        my_id.line1[1] = "Hi, this is 'Rick' from"
        my_id.line2[1] = "the real estate office."
        my_id.line1[2] = "There's a showing for an"
        my_id.line2[2] = "apartment down town today."
        my_id.line1[3] = "It's at SW 121st Street,"
        my_id.line2[3] = "Apt 35. Open house."
        my_id.line1[4] = "Just swing on by when you"
        my_id.line2[4] = "have the time."
        my_id.line1[5] = "..."
        my_id.line2[5] = "*CLICK*"
        my_id.messages = 5
        global.done = 1
    }
}

//Sequence 11.
if room = rmSequence11 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "Hello there, this is 'Thomas'"
        my_id.line2[0] = "from the 'DOWNTOWN RELAXATION'."
        my_id.line1[1] = "We need you to fill in at"
        my_id.line2[1] = "the reception tonight."
        my_id.line1[2] = "One of our employees has"
        my_id.line2[2] = "'called in sick'."
        my_id.line1[3] = "Wear something fitting"
        my_id.line2[3] = "and discreet."
        my_id.line1[4] = "..."
        my_id.line2[4] = "*CLICK*"
        my_id.messages = 4
        global.done = 1
    }
}

//Sequence 12.
if room = rmSequence12 {
    if argument0 = objAnsweringMachine {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "This is 'Jim' from the"
        my_id.line2[0] = "'office'... *AHEM*"
        my_id.line1[1] = "Just wanted to remind you"
        my_id.line2[1] = "that your 'report' is due"
        my_id.line1[2] = "tomorrow morning. Have it"
        my_id.line2[2] = "on my desk by eight."
        my_id.line1[3] = "312 SE st. is the address,"
        my_id.line2[3] = "in case you forgot..."
        my_id.line1[4] = "..."
        my_id.line2[4] = "*CLICK*"
        my_id.line1[5] = "*CLICK*"
        my_id.line2[5] = "*CLICK-CLICK*"
        my_id.line1[6] = "*CLICK* *CLICK*"
        my_id.line2[6] = "*CLICK*"
        my_id.line1[7] = "..."
        my_id.line2[7] = ""
        my_id.line1[8] = "*CLICK* *CLICK* *CLICK*"
        my_id.line2[8] = "*CLICK* *CLICK* *CLICK*"
        my_id.line1[9] = "..."
        my_id.line2[9] = "*CLICK*"
        my_id.messages = 9
        global.done = 1
    }
    if argument0 = 1 {
        my_id.sprite = sprFatCorpseFace
        my_id.index = 0
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprFatCorpseFace
        }
        my_id.line1[0] = "Get out of my face,"
        my_id.line2[0] = "asshole!"
        my_id.line1[1] = "*Cough*"
        my_id.line2[1] = "..."
        my_id.messages = 1
    }
}

//Sequence 12 return.
if room = rmSequence12b {
    if argument0 = 0 {
        my_id.sprite = sprAssassinRatFace
        my_id.index = 0
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprAssassinRatFace
        }
        my_id.line1[0] = "Ah, there you are!"
        my_id.line2[0] = "..."
        my_id.line1[1] = "I was wondering when"
        my_id.line2[1] = "you'd be getting back."
        my_id.line1[2] = "Well, let's get this"
        my_id.line2[2] = "over with then..."
        my_id.messages = 2
    }
    if argument0 = 1 {
        my_id.sprite = sprGirlfriendDeadFace
        my_id.index = 0
        with objEffector {
            image_xscale = 1.5 image_yscale = 1.5 sprite = sprGirlfriendDeadFace
        }
        my_id.line1[0] = "..."
        my_id.line2[0] = ""
        my_id.messages = 0
    }
}

//Sequence 14.
if room = rmSequence14 {
    my_id.sprite = sprFilesBig


    with objEffector sprite = sprFilesBig
    my_id.line1[0] = "...SUSPECTS CLAIM TO HAVE"
    my_id.line2[0] = "BEEN THREATENED INTO..."
    my_id.line1[1] = "...INSTRUCTED TO KILL BY"
    my_id.line2[1] = "MESSAGES ON THEIR..."
    my_id.line1[2] = "...PHONE CALLS TRACED TO A"
    my_id.line2[2] = "CLUB ON SOUTH 86TH STREET..."
    my_id.line1[3] = "...TIES TO UNDERGROUND"
    my_id.line2[3] = "RUSSIAN MAFIA NETWORK..."
    my_id.line1[4] = "...MULTIPLE ACCOUNTS OF"
    my_id.line2[4] = "ILLEGAL ACTIVITY REPORTED..."
    my_id.line1[5] = "...INSUFFICIENT EVIDENCE"
    my_id.line2[5] = "FOR A WARRANT..."
    my_id.messages = 5
    global.done = 1
}

if room = rmMCSequence2 {
    if argument0 = 0 {
        my_id.sprite = sprPhone
        with objEffector sprite = sprPhone
        my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
        my_id.line2[0] = "*BEEP*"
        my_id.line1[1] = "HELLO, IT'S 'MARK' FROM"
        my_id.line2[1] = "MIAMI DROP OFF..."
        my_id.line1[2] = "IT LOOKS LIKE YOU MISSED"
        my_id.line2[2] = "YOUR DELIVERY LAST NIGHT."
        my_id.line1[3] = "WE'VE GOT ANOTHER PARCEL"
        my_id.line2[3] = "FOR YOU TODAY..."
        my_id.line1[4] = "PLEASE DROP IT OFF AT"
        my_id.line2[4] = "SW 107TH PLACE."
        my_id.line1[5] = "OUR CLIENTS WILL NOT"
        my_id.line2[5] = "TOLERATE FURTHER DELAYS!"
        my_id.line1[6] = "..."
        my_id.line2[6] = "*CLICK*"
        my_id.messages = 6
        global.done = 1
    }

    if argument0 = 1 {
        my_id.sprite = sprForms


        with objEffector sprite = sprForms
        my_id.line1[0] = "Thank you for subscribing"
        my_id.line2[0] = "to our newsletter!"
        my_id.line1[1] = "We appreciate your interest"
        my_id.line2[1] = "in our cause."
        my_id.line1[2] = "America is a tune. It"
        my_id.line2[2] = "must be sung together."
        my_id.line1[3] = "-50 blessings"
        my_id.line2[3] = ""
        my_id.messages = 3
    }
}

if room = rmMCSequence3 {
    my_id.sprite = sprPhone
    with objEffector sprite = sprPhone
    my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
    my_id.line2[0] = "*BEEP*"
    my_id.line1[1] = "HI IT'S 'JANE'. IT WAS"
    my_id.line2[1] = "NICE TO SEE YOU AGAIN."
    my_id.line1[2] = "HOW ABOUT ANOTHER DATE"
    my_id.line2[2] = "TONIGHT?"
    my_id.line1[3] = "PICK ME UP AT NE 158TH ST"
    my_id.line2[3] = "AROUND NINE, OK?"
    my_id.line1[4] = "AND PUT ON ONE OF THOSE"
    my_id.line2[4] = "NICE SUITS YOU'VE GOT."
    my_id.line1[5] = "YOU'RE TAKING ME SOMEWHERE"
    my_id.line2[5] = "FANCY THIS EVENING!"
    my_id.line1[6] = "..."
    my_id.line2[6] = "*CLICK*"
    my_id.messages = 6
    global.done = 1
}

if room = rmMCSequence4 {
    my_id.sprite = sprPhone
    with objEffector sprite = sprPhone
    my_id.line1[0] = "YOU HAVE ONE NEW MESSAGE!"
    my_id.line2[0] = "*BEEP*"
    my_id.line1[1] = "HI IT'S 'BEN' FROM MIAMI"
    my_id.line2[1] = "FUNERAL PARLOUR..."
    my_id.line1[2] = "I'M JUST CALLING TO TELL"
    my_id.line2[2] = "YOU WE HAVE THE TOMBSTONE"
    my_id.line1[3] = "YOU ORDERED DONE AND READY"
    my_id.line2[3] = "TO BE DELIVERED."
    my_id.line1[4] = "WITH A LITTLE LUCK YOU"
    my_id.line2[4] = "SHOULD BE GETTING IT"
    my_id.line1[5] = "BEFORE THE WEEKEND!"
    my_id.line2[5] = "..."
    my_id.line1[6] = "..."
    my_id.line2[6] = "*CLICK*"
    my_id.messages = 6
    global.done = 1
}
