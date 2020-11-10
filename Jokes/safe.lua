--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  @file-author@'s DadGratz Addon for World of Warcraft
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local _G = _G
local me, ns = ...
local addon = ns
--local addon = LibStub("LibInit"):NewAddon(ns, me, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
DG_globals.jokesSafe = {
  "Well, %s, that thar be a nice achievement you got there!",
  "Dude, %s, thats awesome!",
  "Magnifico, %s!",
  "Great Achievement, %s! keep up the aweshumm :D",
  "Well done %s!!",
  "I do believe that %s got a nice cheevo!",
  "Glad to see the achievement, %s! nice one!",
  "OOooooh nice achievement %s!! :)",
  "WOOOHOOO!! well done that %s!",
  "Achievement score = Achievement score + Achievement amount! :D",
  "oooooh nice achieve, %s! :)",
  "Every time %s gets an achievement a penguin wants to hug them!",
  "Every time %s gets an achievement a rainbow forms!",
  "A great achievement by a great person! :)",
  "Every time %s gets an achievement a dolphin jumps over a double rainbow!",
  "That achievement is beaten only by marshmallows, coated in chocolate and sprinkled with choc chips! ... but only just!",
  "If you achieve it, Achievements will come! ... or baseball fields :/",
  "%s deserves a medal... oh wait, we call them achievements... WELL DONE!! :D",
  "%s got an achievement! .. showing today on front row! [anyone who got that reference deserves a cookie!!]",
  "Thats a nice achievement, really, truly, very... well done, %s! Most impressive! :)",
  "GRATZAMONDO, %s!! :D",
  "Perfectly executed achievement, %s! Top notch, well done!",
  "Thats plenty brilliant, %s! nice one!",
  "%s, the cheevo game is afoot!",
  "If that were a trick shot, %s, it'd break the table for being so epic!",
  "It's a great day for a great achievement such as that one, %s!",
  "At the most opportune time, in came %s with the most awesome achievement",
  "%s walks through the achievements with the majesty of an ocean liner cruising the waves",
  "We see you like achievements, %s, and we know you like grats, so here is one for you now :D",
  "May the grats be with you, %s!",
  "Go for the gold text, %s! The gold text is all, The gold text is wise!",
  "3 blind mice, see how they run... they saw %s's epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear..",
  "Doing well, %s, keep it up!",
  "Plenty of fun to be had when getting those achievements, we all should venture more into that side of things.. make a day of it even? :)",
  "Wow, %s! Such awesome, many Congrats!!",
  "!Gratz, %s!",
  "Epically glorious achievement, %s!",
  "Well done on that one, %s! :)",
  "Awesome, %s!",
  "Pukkachieve :D",
  "Nice achieve, %s!",
  "Top achieve, %s!",
  "Thats great, %s, well done!",
  "Brilliant achieve, %s!",
  "We love achievements here, %s!",
  "Nice one, %s!",
  "Cool achieve, %s!",
  "Great achievement, %s!!!",
  "Ah yes, %s, Well done! Nice achievement :D",
  "Well thats certainly a great achievement, %s, well done!",
  "Achievements, achievements everywhere, %s! AND ITS AWESOME!",
  "If I had a rainbow, and that rainbow had kittens and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!",
  "Glad to see another achievement, %s! :)",
  "I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! Well done!!! :P",
  "Denver, the last dinosaur, saw %s's achieve, and danced on the floor!",
  "This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!",
  "Dats an amazin' achieve, %s!",
  "And this is what I'm talking about, GREAT ACHIEVEMENT, %s!, Like really well done!!! :)",
  "Wibble wobble wibble wobble, achievement on the plate, %s! congrats! :D",
  "Achievements, for getting, sharing and boasting about.. or at least that one is!",
  "Look at %s's sparkly achievement that just happened!!",
  "Achievement detected from %s... Grats initiated!",
  "NICE, %s!!",
  "Achievement cometh, and grats shalt follow! Congratulations, %s!",
  "Up through the darkness the shadowy figure arose, it looked at %s... it came ever closer!... it shook their hand and congratulated them on that achievement. well done!!",
  "... and the grats was to be had for that achievement.. %s partied, stayed up late... and in the morning.. they made waffles!.. congrats!",
  "The textual proof of %s's accomplishment is acknowldged in this congratual fashion.",
  "Ah Yes, perfectly executed achievement, %s, well done!",
  "YAY nice achieve, %s!",
  "!!! CONGRATS !!!",
  "Happy Birth... DOH.. I mean congratulations on your achievement, %s!",
  "Congratulations on that achievement, %s!",
  "Splendid, %s! Keep up the achievements!",
  "I, ".. UnitName("player").. " salute that achievement %s!",
  "Well done there, %s!",
  UnitName("player").. " likes %s's achievement, ".. UnitName("player").. " gives you grats!",
  "GRATZAMONDO, %s!!",
  "Fantastic achievement, %s! From your friendly nighbourhood ".. UnitName("player"),
  "Your efforts have not gone un-noticed, %s, congratulations! :D",
  "The clarity of your achievement echoes through the lands, %s! well done!",
  "Do you chase waterfalls, %s? rivers? lakes? That achievement has music written all over it!",
  "Whose the tank?.... Uh I mean CONGRATULATIONS! ... Whats the mage?.... I dont know.... HE'S THE PRIEST!",
  "Congrats on the Achievement! :)",
  "Like a rocket, that achievement soared, %s! Great one!",
  "That achievement was like a bright firework, for all to see!",
  "Nice and clean, NICE... and... CLEAN... achievement!",
  "Always let your achievement be your guide, %s.. no wait... ... yeah achievement yeah! :D",
  "Achievements shall set you free... especially that one!  JOB!!",
  "As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ...",
  "Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!",
  "DUUUUUUUDE! nice!",
  "Nice Achieve, PARTY TIME! Excellent! *cue air guitar*",
  "%s be like 'YO CHECK ME OUT' ... And we're like 'DUDE! We know man, awesome!!'",
  "Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!",
  "Maximum Congratulations my fellow guildonian!",
  "Throwing forward my greatest applause for that achievement, %s!",
  "May all your mounts crowd around you in tribute for that single achievement alone, %s!",
  "If that achievement were any brighter, %s, it would sparkle in the sky!",
  "Your achievement will resonate through time and space with grace!",
  "Let loose of your hatred, feeel the warm embrace of achievements....... aaahhhhhhh :D",
  "The magnitude of your achievement will ring through the ages... congrats! :D",
  "Always let your achievements be your guide, %s!",
  "Wellius Dunnikus, %s!",
  "Achievement Detected, %s! Grats initiated! ... CONGRATS! :D",
  "oooOOOOoooooh NICE!",
  "Achievement meet Grats, Grats meet Achievement! ... Aww, look how good they are together!",
  "THAT ROCKS... Great achievement!!",
  "I say, what a lovely achievement you got! Set it down over there with the rest of them, %s, theres a good guildy. congrats btw! :D",
  "Gotta collect-em all!! ... No wait ... I mean well done, %s!",
  "Have a cookie for THAT achievement, %s! Well earned!",
  "Have 10 cookies for THAT achievement, %s!! Great Job!",
  "%s's accomplishment is acknowledged by this text stating about it! Nice one!",
  "EJECTO CHEEVO CUZZZ!! Nice! :D",
  "*SCHHH* ... This is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land.. Bring her home!... *SCHHH*",
  "The achievement bus is coming and everybodys jumping, stormwind to undercity, the grats are gettin busy...",
  "And now, we see the achievement ... See it's Yellow glow as it tries to attract a mate ... The Grats as they are commonly known, come out in numbers to show their superiority ... Only one will be worthy!",
}
--[[
     ########################################################################
     |  Last Editted By: @file-author@ - @file-date-iso@
     |  @file-revision@
     |                                                                      |
     '-------------------------.oooO----------------------------------------|
                              (    )     Oooo.
                              \  (     (    )
                               \__)     )  /
                                       (__/                                   ]]
