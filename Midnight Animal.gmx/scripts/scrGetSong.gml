if global.done=1 {
if argument0=rmSequence1Downstairs return working_directory+"\Obituary.mp3"
if argument0=rmSequence2Downstairs return working_directory+"\FuckedTheDevil.mp3"
if argument0=rmSequence3Downstairs return working_directory+"\Level2.mp3"
if argument0=rmSequence4Downstairs return working_directory+"\Orchid.mp3"
if argument0=rmSequence5Downstairs return working_directory+"\Sword.mp3"
if argument0=rmSequence6Downstairs return working_directory+"\Ximena.mp3"
if argument0=rmSequence7Downstairs return working_directory+"\Invasion.mp3"
if argument0=rmSequence8Downstairs return working_directory+"\NearDark.mp3"
if argument0=rmSequence9Downstairs return working_directory+"\Rezorecta.mp3"
if argument0=rmSequence10Downstairs return working_directory+"\Crackdown.mp3"
if argument0=rmSequence11Downstairs return working_directory+"\Obsession.mp3"
if argument0=rmSequence12Downstairs return working_directory+"\Mandarin.mp3"
if argument0=rmSequence13Downstairs return working_directory+"\DressedToKill.mp3"
if argument0=rmSequence14Downstairs return working_directory+"\HangEm.mp3"
if argument0=rmChapter return working_directory+"\TurfMain.mp3"
} else {
if room=rmSequence1Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence2Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence3Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence4Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence5Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence6Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence7Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence8Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence9Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence10Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence11Downstairs return working_directory+"\Rust.mp3"
if room=rmSequence12Downstairs return working_directory+"\Rust.mp3"
}

if argument0=rmMCBar return working_directory+"\InnerAnimal.mp3"
if argument0=rmMCSequence2Downstairs return working_directory+"\Musikk2.mp3"
if argument0=rmMCSequence3Downstairs return working_directory+"\Knock.mp3"
if argument0=rmMCSequence4Downstairs return working_directory+"\InnerAnimal.mp3"
if argument0=rmNoodleShop return working_directory+"\Redial.mp3"
if argument0=rmArcadeDownstairs return working_directory+"\Redial.mp3"
if argument0=rmPhoneHomEntranceBiker return working_directory+"\ItsSafeNow.mp3"
if argument0=rmJanitors return working_directory+"\ANewMorning.mp3"

//SONGS FOR HOME
if room=rmStore1 
or room=rmPizzaHut1 
or room=rmVideoStore1 
or room=rmStore2 
or room=rmPizzaHut2 
or room=rmVideoStore2 
or room=rmStore3 
or room=rmPizzaHut3
or room=rmVideoStore3 
{objEffector.newsong=0 global.song=working_directory+"\WeDontTalkMuchAnymore.mp3"}

if room=rmBar3 {objEffector.newsong=0 global.song=working_directory+"\BlackTar.mp3"}
if room=rmBar1 or room=rmBar2 {objEffector.newsong=0 global.song=""}
