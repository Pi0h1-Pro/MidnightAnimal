/// @description  Random miscellany.
laugh = choose(sndLaughTrack, sndLaughTrack2, sndLaughTrack3, sndLaughTrack4);
sound_play(choose(sndPhoneCall, sndApplause, laugh));
alarm[3] = 50 + random(400);

