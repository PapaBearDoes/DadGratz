--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  PapaBearDoes's DadGratz Addon for World of Warcraft                 |
     |  @project-version@
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local L = LibStub("AceLocale-3.0"):NewLocale("DadGratz", "enUS", true)

-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!

-- enUS Localization
-- L["identifier"] = "translation"
L["gratzDad"] = {
  "Hello %s's achievement. I'm Dad.",
  "I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me.",
  "Two of %s's achievements walked into a bar. The third ducked.",
  "%s was addicted to soap ... they're clean now though.",
}

L["gratzNice"] = {
  "Well, that thar be a nice achievement you got there, %s!",
  "Dude, %s, thats awesome!",
  "Magnifico, %s!",
  "Great Achievement, %s! keep up the aweshumm :D",
  "Well done there, specific guild person!!",
  "I do believe that you got a nice cheevo!",
  "Glad to see the achievement! nice one, %s!",
  "OOooooh, %s, nice achievement!! :)",
  "WOOOHOOO!! well done that guildy!",
  "Achievement score = Achievement score + Achievement amount! :D",
  "oooooh nice achieve, %s! :)",
  "Every time you get an achievement a penguin wants to hug you!",
  "Every time you get an achievement a rainbow forms!",
  "A great achievement by a great person! :)",
  "Every time you get an achievement a dolphin jumps over a double rainbow!",
  "That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!",
  "If you achieve it, %s, Achievements will come! ... or baseball fields :/",
  "%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D",
  "You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)",
  "Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)",
  "GRATZAMONDO!! :D",
  "Perfectly executed achievement, %s, top notch, well done!",
  "Thats plenty brilliant, %s! nice one!",
  "AHA, the cheevo game is afoot!",
  "If that were a trick shot it'd break the table for being so epic!",
  "It's a great day for a great achievement such as that one!",
  "At the most opportune time, %s came in with the most awesome achievement!",
  "You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves",
  "We see you like achievements, %s. We know you like grats, so here is one for you now :D",
  "May the grats be with you, %s!",
  "Go for the gold text, %s! The gold text is good ... the gold text is wise.",
  "3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear..",
  "Doing well, keep it up, %s!",
  "Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)",
  "Wow such awesome, many Congrats!!",
  "!gratz!",
  "Epically glorious Achievement!",
  "Well done on that one! :)",
  "Awesome, %s!",
  "Pukkachieve :D",
  "Nice achieve, %s!",
  "Top achieve, %s!",
  "Thats great, %s! Well done",
  "Brilliant achieve, %s!",
  "We love achievements here, %s!",
  "Nice one, %s!",
  "Cool achieve, %s!",
  "Great achievement, %s!!!",
  "Ah yes, Well done! Nice achievement, %s! :D",
  "Well thats certainly a great achievement, %s, well done!",
  "Achievements, achievements everywhere! AND ITS AWESOME!",
  "If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!",
  "Glad to see another achievement :)",
  "Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)",
  "In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!",
  "I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P",
  "If Illidan saw that he'd HAVE to admit that %s was prepared!",
  "Denver, the last dinosaur, saw your achieve and he danced on the floor!",
  "This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!",
  "Dats an amazin' achieve, %s!",
  "And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)",
  "By Azeroth! you really rocked that achievement, %s!!",
  "Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D",
  "Achievements, %s, for getting, sharing and boasting about ... or at least that one is!",
  "Look at the sparkly achievement that just happened!!",
  "Achievement detected ... Grats initiated!",
  "NICE!!",
  "Not even Deathwing would argue that achievement, %s! Congrats!",
  "Achievement cometh, and grats shalt follow! Congratulations!",
  "Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!",
  "... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!",
  "The textual proof of your said accomplishment is acknowledged in this congratual fashion.",
  "Ah Yes, %s, perfectly executed achievement, well done!",
  "YAY nice achieve, %s!",
  "!!! CONGRATS !!!",
  "Happy Birth ... DOH ... I mean congratulations on your achievement, %s!",
  "Congratulations on that achievement, %s!",
  "Splendid! Keep up the achievements, %s!",
  "I, " .. UnitName("player") .. ", salute that achievement entirely!",
  "Well done that one!",
  UnitName("player") .. " likes your achievement, " .. UnitName("player") .. " gives you grats!",
  "GRATZAMONDO!!",
  "Fantastic achievement, %s! from your friendly nighborhood " .. UnitName("player"),
  "Your efforts have not gone un-noticed, congratulations, %s! :D",
  "The wisps of Moonglade chanted %s's name as they got THAT achievement!",
  "The clarity of your achievement echoes through the lands, %s! Well done!",
  "Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!",
  "Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!",
  "Congrats on the Achievement, %s! :)",
  "Like a rocket, that achievement soared, %s! Great one!",
  "That achievement was like a bright firework for all to see, %s!",
  "Nice and clean, NICE ... and ... CLEAN ... achievement, %s!",
  "Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D",
  "Achievements shall set you free ... especially that one! GOOD JOB, %s!!",
  "As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ...",
  "Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!",
  "DUUUUUUUDE! Nice, %s!",
  "Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*",
  "Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'",
  "Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!",
  "Maximum Congratulations my fellow guildy!",
  "Throwing forward my greatest applause for that achievement, %s!",
  "All the critters in the area are celebrating that achievement, %s, as are we!",
  "May all your mounts crowd around you in tribute for that single achievement alone, %s!",
  "If that achievement were any brighter it would sparkle in the sky, %s!",
  "Your achievement will resonate through time and space with grace, %s!",
  "Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D",
  "The magnitude of your achievement will ring through the ages, %s ... congrats! :D",
  "Always let your achievement be your guide, %s!",
  "Wellius Dunnikus, %s!",
  "Achievement Detected! Grats initiated! ... CONGRATS! :D",
  "oooOOOOoooooh NICE, %s!",
  "Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!" ,
  "THAT ROCKS, %s ... great achievement!!",
  "I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D",
  "Gotta collect-em all!! ... no wait ... I mean well done!",
  "Have a cookie for THAT achievement, %s! Well earned!",
  "Have 10 cookies for THAT achievement, %s!! Great Job!",
  "An achievement walks into a box ... THE CHATBOX! *badumtchsss",
  "Your accomplishment is acknowledged by this text stating it, %s! Nice one!",
  "EJECTO CHEEVO CUZZZ!! nice! :D",
  "*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*",
  "The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ...",
  "... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!",
  "And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!"
}

L["gratzNaughty"] = {
  "That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are.",
  "Is that an achievement you got there %s, or are you just happy to see me?",
  "Ooo, such a *big* achievement, %s. You're such a good player.",
}

L["gratzDark"] = {
  "Much like the rest of Gen Z who are alive, %s survived that achievement without getting shot ...",
  "Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?",
}
--[[
     ########################################################################
     |  Last Editted By: @file-author@ - @file-date-iso@
     |  @file-hash@
     |                                                                      |
     '-------------------------.oooO----------------------------------------|
                              (    )     Oooo.
                              \  (     (    )
                               \__)     )  /
                                       (__/                                   ]]