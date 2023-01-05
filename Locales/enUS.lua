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
--@localization(locale="enUS", format="lua_additive_table", same-key-is-true=true, handle-subnamespaces="subtable", handle-unlocalized="comment")@

--@do-not-package@
-- L["identifier"] = "translation"
L = L or {}
L["AddCustomGratz"] = "Add Custom Gratz"
L["AddCustomGratzDesc"] = "Add Custom Gratz Desc"
L["AddonName"] = "DadGratz"
L["BuiltinWeights"] = "Builtin Gratz Weights"
L["CustomGratz"] = "Custom Gratz"
L["CustomGratzDisabled"] = "Custom Gratz disabled."
L["CustomGratzEnabled"] = "Custom Gratz enabled."
L["CustomGratzSettings"] = "Custom Gratz Settings"
L["CustomWeight"] = "Custom Gratz Weight"
L["CustomWeightDesc"] = "Custom Gratz Weight Description"
L["DadWeight"] = "Dad Gratz Weight"
L["DadWeightDesc"] = "Dad Gratz Weight Description"
L["DarkGratz"] = "Dark Humor Gratz"
L["DarkGratzDisabled"] = "Dark Humor Gratz disabled."
L["DarkGratzEnabled"] = "Dark Humor Gratz enabled."
L["DarkOnly"] = "Dark Only"
L["DarkWeight"] = "Dark Gratz Weight"
L["DarkWeightDesc"] = "Dark Gratz Weight Description"
L["DelCustomGratz"] = "List Custom Gratz"
L["DelCustomGratzDesc"] = "Click the gratz you wish to delete, a confirmation window will appear. (THIS IS PERMANENT!!!)"
L["disabled"] = true
L["DoCustomGratz"] = "Do Custom Gratz"
L["DoCustomGratzDesc"] = "Do Custom Gratz"
L["DoDarkGratz"] = "Do Dark Humor Gratz"
L["DoDarkGratzToggle"] = "Do Dark Humor Gratz"
L["DoNaughtyGratz"] = "Do Naughty Gratz"
L["DoNaughtyGratzToggle"] = "Do Naughty Gratz"
L["enabled"] = true
L["everyone"] = true
L["general"] = true
L["GeneralSettings"] = "General Settings"
L["GratzOptions"] = "Gratz Options"
L["GratzWeights"] = "Gratz Weights"
L["GuildAchievementReceived"] = "Guild Achievement Received"
L["GuildMessageReceived"] = "Guild Message Received"
L["ListCustomGratz"] = "List Custom Gratz"
L["ListCustomGratzDesc"] = "Click the gratz you wish to delete, a confirmation window will appear. (THIS IS PERMANENT!!!)"
L["MyAchievement"] = "That's my achievement, not responding."
L["NaughtyAndDark"] = "Naughty and Dark"
L["NaughtyGratz"] = "Naughty Gratz"
L["NaughtyGratzDisabled"] = "Naughty Gratz disabled."
L["NaughtyGratzEnabled"] = "Naughty Gratz enabled."
L["NaughtyOnly"] = "Naughty Only"
L["NaughtyWeight"] = "Naughty Gratz Weight"
L["NaughtyWeightDesc"] = "Naughty Gratz Weight Description"
L["Neither"] = true
L["NiceWeight"] = "Nice Gratz Weight"
L["NiceWeightDesc"] = "Nice Gratz Weight Description"
L["No"] = true
L["profile"] = true
L["Profiles"] = true
L["RightClick"] = "Right Click"
L["RightClickToolTip"] = " to configure addon."
L["ShowMinimapButton"] = "Show Minimap Button"
L["ShowMinimapButtonDesc"] = "Show Minimap Button"
L["TestModeEnabled"] = "Test Mode Enabled"
L["triggering"] = true
L["Yes"] = true

L["gratzDad"] = {
	["%s was addicted to soap ... they're clean now though."] = true,
	["Hello %s's achievement. I'm Dad."] = true,
	["I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me."] = true,
	["Two of %s's achievements walked into a bar. The third ducked."] = true,
}

L["gratzDark"] = {
	["Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?"] = true,
	["Much like the rest of American Gen Z who are alive, %s survived that achievement without getting shot ..."] = true,
}

L["gratzNaughty"] = {
	["Is that an achievement you got there %s, or are you just happy to see me?"] = true,
	["Ooo, such a *big* achievement, %s. You're such a good player."] = true,
	["That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are."] = true,
}

L["gratzNice"] = {
	["!!! CONGRATS !!!"] = true,
	["!gratz!"] = true,
	["%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D"] = true,
	["*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*"] = true,
	["... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!"] = true,
	["... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!"] = true,
	["3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear.."] = true,
	["A great achievement by a great person! :)"] = true,
	["Achievement cometh, and grats shalt follow! Congratulations!"] = true,
	["Achievement detected ... Grats initiated!"] = true,
	["Achievement Detected! Grats initiated! ... CONGRATS! :D"] = true,
	["Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!"] = true,
	["Achievement score = Achievement score + Achievement amount! :D"] = true,
	["Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)"] = true,
	["Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'"] = true,
	["Achievements shall set you free ... especially that one! GOOD JOB, %s!!"] = true,
	["Achievements, %s, for getting, sharing and boasting about ... or at least that one is!"] = true,
	["Achievements, achievements everywhere! AND ITS AWESOME!"] = true,
	["Ah Yes, %s, perfectly executed achievement, well done!"] = true,
	["Ah yes, Well done! Nice achievement, %s! :D"] = true,
	["AHA, the cheevo game is afoot!"] = true,
	["All the critters in the area are celebrating that achievement, %s, as are we!"] = true,
	["Always let your achievement be your guide, %s!"] = true,
	["Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D"] = true,
	["An achievement walks into a box ... THE CHATBOX! *badumtchsss"] = true,
	["And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!"] = true,
	["And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)"] = true,
	["As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ..."] = true,
	["At the most opportune time, %s came in with the most awesome achievement!"] = true,
	["Awesome, %s!"] = true,
	["Brilliant achieve, %s!"] = true,
	["By Azeroth! you really rocked that achievement, %s!!"] = true,
	["Congrats on the Achievement, %s! :)"] = true,
	["Congratulations on that achievement, %s!"] = true,
	["Cool achieve, %s!"] = true,
	["Dats an amazin' achieve, %s!"] = true,
	["Denver, the last dinosaur, saw your achieve and he danced on the floor!"] = true,
	["Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!"] = true,
	["Doing well, keep it up, %s!"] = true,
	["Dude, %s, thats awesome!"] = true,
	["DUUUUUUUDE! Nice, %s!"] = true,
	["EJECTO CHEEVO CUZZZ!! nice! :D"] = true,
	["Epically glorious Achievement!"] = true,
	["Every time you get an achievement a dolphin jumps over a double rainbow!"] = true,
	["Every time you get an achievement a penguin wants to hug you!"] = true,
	["Every time you get an achievement a rainbow forms!"] = true,
	["Fantastic achievement, %s! from your friendly neighborhood guildmatet."] = true,
	["Glad to see another achievement :)"] = true,
	["Glad to see the achievement! nice one, %s!"] = true,
	["Go for the gold text, %s! The gold text is good ... the gold text is wise."] = true,
	["Gotta collect-em all!! ... no wait ... I mean well done!"] = true,
	["GRATZAMONDO!!"] = true,
	["GRATZAMONDO!! :D"] = true,
	["Great Achievement, %s! keep up the aweshumm :D"] = true,
	["Great achievement, %s!!!"] = true,
	["Happy Birth ... DOH ... I mean congratulations on your achievement, %s!"] = true,
	["Have 10 cookies for THAT achievement, %s!! Great Job!"] = true,
	["Have a cookie for THAT achievement, %s! Well earned!"] = true,
	["I do believe that you got a nice cheevo!"] = true,
	["I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P"] = true,
	["I salute that achievement entirely!"] = true,
	["I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D"] = true,
	["If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!"] = true,
	["If Illidan saw that he'd HAVE to admit that %s was prepared!"] = true,
	["If that achievement were any brighter it would sparkle in the sky, %s!"] = true,
	["If that were a trick shot it'd break the table for being so epic!"] = true,
	["If you achieve it, %s, Achievements will come! ... or baseball fields :/"] = true,
	["In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!"] = true,
	["Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!"] = true,
	["It's a great day for a great achievement such as that one!"] = true,
	["Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D"] = true,
	["Like a rocket, that achievement soared, %s! Great one!"] = true,
	["Look at the sparkly achievement that just happened!!"] = true,
	["Magnifico, %s!"] = true,
	["Maximum Congratulations my fellow guildy!"] = true,
	["May all your mounts crowd around you in tribute for that single achievement alone, %s!"] = true,
	["May the grats be with you, %s!"] = true,
	["Nice achieve, %s!"] = true,
	["Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*"] = true,
	["Nice and clean, NICE ... and ... CLEAN ... achievement, %s!"] = true,
	["Nice one, %s!"] = true,
	["NICE!!"] = true,
	["Not even Deathwing would argue that achievement, %s! Congrats!"] = true,
	["oooooh nice achieve, %s! :)"] = true,
	["OOooooh, %s, nice achievement!! :)"] = true,
	["oooOOOOoooooh NICE, %s!"] = true,
	["Perfectly executed achievement, %s, top notch, well done!"] = true,
	["Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)"] = true,
	["Pukkachieve :D"] = true,
	["Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!"] = true,
	["Splendid! Keep up the achievements, %s!"] = true,
	["That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!"] = true,
	["That achievement was like a bright firework for all to see, %s!"] = true,
	["THAT ROCKS, %s ... great achievement!!"] = true,
	["Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)"] = true,
	["Thats great, %s! Well done"] = true,
	["Thats plenty brilliant, %s! nice one!"] = true,
	["The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ..."] = true,
	["The clarity of your achievement echoes through the lands, %s! Well done!"] = true,
	["The magnitude of your achievement will ring through the ages, %s ... congrats! :D"] = true,
	["The textual proof of your said accomplishment is acknowledged in this congratual fashion."] = true,
	["The wisps of Moonglade chanted %s's name as they got THAT achievement!"] = true,
	["This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!"] = true,
	["This person likes your achievement. This person gives you grats!"] = true,
	["Throwing forward my greatest applause for that achievement, %s!"] = true,
	["Top achieve, %s!"] = true,
	["Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!"] = true,
	["We love achievements here, %s!"] = true,
	["We see you like achievements, %s. We know you like grats, so here is one for you now :D"] = true,
	["Well done on that one! :)"] = true,
	["Well done that one!"] = true,
	["Well done there, specific guild person!!"] = true,
	["Well thats certainly a great achievement, %s, well done!"] = true,
	["Well, that thar be a nice achievement you got there, %s!"] = true,
	["Wellius Dunnikus, %s!"] = true,
	["Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!"] = true,
	["Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D"] = true,
	["WOOOHOOO!! well done that guildy!"] = true,
	["Wow such awesome, many Congrats!!"] = true,
	["YAY nice achieve, %s!"] = true,
	["You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)"] = true,
	["You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves"] = true,
	["Your accomplishment is acknowledged by this text stating it, %s! Nice one!"] = true,
	["Your achievement will resonate through time and space with grace, %s!"] = true,
	["Your efforts have not gone un-noticed, congratulations, %s! :D"] = true,
}

--[[
-- Dad Gratz
L["gratzDad/%s was addicted to soap ... they're clean now though."] = "%s was addicted to soap ... they're clean now though."
L["gratzDad/Hello %s's achievement. I'm Dad."] = "Hello %s's achievement. I'm Dad."
L["gratzDad/I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me."] = "I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me."
L["gratzDad/Two of %s's achievements walked into a bar. The third ducked."] = "Two of %s's achievements walked into a bar. The third ducked."

--Dark Gratz
L["gratzDark/Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?"] = "Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?"
L["gratzDark/Much like the rest of American Gen Z who are alive, %s survived that achievement without getting shot ..."] = "Much like the rest of American Gen Z who are alive, %s survived that achievement without getting shot ..."

--Naughty Gratz
L["gratzNaughty/Is that an achievement you got there %s, or are you just happy to see me?"] = "Is that an achievement you got there %s, or are you just happy to see me?"
L["gratzNaughty/Ooo, such a *big* achievement, %s. You're such a good player."] = "Ooo, such a *big* achievement, %s. You're such a good player."
L["gratzNaughty/That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are."] = "That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are."

--Nice Gratz
L["gratzNice/!!! CONGRATS !!!"] = "!!! CONGRATS !!!"
L["gratzNice/!gratz!"] = "!gratz!"
L["gratzNice/%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D"] = "%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D"
L["gratzNice/*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*"] = "*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*"
L["gratzNice/... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!"] = "... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!"
L["gratzNice/... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!"] = "... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!"
L["gratzNice/3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear.."] = "3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear.."
L["gratzNice/A great achievement by a great person! :)"] = "A great achievement by a great person! :)"
L["gratzNice/Achievement cometh, and grats shalt follow! Congratulations!"] = "Achievement cometh, and grats shalt follow! Congratulations!"
L["gratzNice/Achievement detected ... Grats initiated!"] = "Achievement detected ... Grats initiated!"
L["gratzNice/Achievement Detected! Grats initiated! ... CONGRATS! :D"] = "Achievement Detected! Grats initiated! ... CONGRATS! :D"
L["gratzNice/Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!"] = "Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!"
L["gratzNice/Achievement score = Achievement score + Achievement amount! :D"] = "Achievement score = Achievement score + Achievement amount! :D"
L["gratzNice/Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)"] = "Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)"
L["gratzNice/Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'"] = "Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'"
L["gratzNice/Achievements shall set you free ... especially that one! GOOD JOB, %s!!"] = "Achievements shall set you free ... especially that one! GOOD JOB, %s!!"
L["gratzNice/Achievements, %s, for getting, sharing and boasting about ... or at least that one is!"] = "Achievements, %s, for getting, sharing and boasting about ... or at least that one is!"
L["gratzNice/Achievements, achievements everywhere! AND ITS AWESOME!"] = "Achievements, achievements everywhere! AND ITS AWESOME!"
L["gratzNice/Ah Yes, %s, perfectly executed achievement, well done!"] = "Ah Yes, %s, perfectly executed achievement, well done!"
L["gratzNice/Ah yes, Well done! Nice achievement, %s! :D"] = "Ah yes, Well done! Nice achievement, %s! :D"
L["gratzNice/AHA, the cheevo game is afoot!"] = "AHA, the cheevo game is afoot!"
L["gratzNice/All the critters in the area are celebrating that achievement, %s, as are we!"] = "All the critters in the area are celebrating that achievement, %s, as are we!"
L["gratzNice/Always let your achievement be your guide, %s!"] = "Always let your achievement be your guide, %s!"
L["gratzNice/Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D"] = "Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D"
L["gratzNice/An achievement walks into a box ... THE CHATBOX! *badumtchsss"] = "An achievement walks into a box ... THE CHATBOX! *badumtchsss"
L["gratzNice/And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!"] = "And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!"
L["gratzNice/And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)"] = "And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)"
L["gratzNice/As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ..."] = "As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ..."
L["gratzNice/At the most opportune time, %s came in with the most awesome achievement!"] = "At the most opportune time, %s came in with the most awesome achievement!"
L["gratzNice/Awesome, %s!"] = "Awesome, %s!"
L["gratzNice/Brilliant achieve, %s!"] = "Brilliant achieve, %s!"
L["gratzNice/By Azeroth! you really rocked that achievement, %s!!"] = "By Azeroth! you really rocked that achievement, %s!!"
L["gratzNice/Congrats on the Achievement, %s! :)"] = "Congrats on the Achievement, %s! :)"
L["gratzNice/Congratulations on that achievement, %s!"] = "Congratulations on that achievement, %s!"
L["gratzNice/Cool achieve, %s!"] = "Cool achieve, %s!"
L["gratzNice/Dats an amazin' achieve, %s!"] = "Dats an amazin' achieve, %s!"
L["gratzNice/Denver, the last dinosaur, saw your achieve and he danced on the floor!"] = "Denver, the last dinosaur, saw your achieve and he danced on the floor!"
L["gratzNice/Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!"] = "Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!"
L["gratzNice/Doing well, keep it up, %s!"] = "Doing well, keep it up, %s!"
L["gratzNice/Dude, %s, thats awesome!"] = "Dude, %s, thats awesome!"
L["gratzNice/DUUUUUUUDE! Nice, %s!"] = "DUUUUUUUDE! Nice, %s!"
L["gratzNice/EJECTO CHEEVO CUZZZ!! nice! :D"] = "EJECTO CHEEVO CUZZZ!! nice! :D"
L["gratzNice/Epically glorious Achievement!"] = "Epically glorious Achievement!"
L["gratzNice/Every time you get an achievement a dolphin jumps over a double rainbow!"] = "Every time you get an achievement a dolphin jumps over a double rainbow!"
L["gratzNice/Every time you get an achievement a penguin wants to hug you!"] = "Every time you get an achievement a penguin wants to hug you!"
L["gratzNice/Every time you get an achievement a rainbow forms!"] = "Every time you get an achievement a rainbow forms!"
L["gratzNice/Fantastic achievement, %s! from your friendly neighborhood guildmatet."] = "Fantastic achievement, %s! from your friendly neighborhood guildmatet."
L["gratzNice/Glad to see another achievement :)"] = "Glad to see another achievement :)"
L["gratzNice/Glad to see the achievement! nice one, %s!"] = "Glad to see the achievement! nice one, %s!"
L["gratzNice/Go for the gold text, %s! The gold text is good ... the gold text is wise."] = "Go for the gold text, %s! The gold text is good ... the gold text is wise."
L["gratzNice/Gotta collect-em all!! ... no wait ... I mean well done!"] = "Gotta collect-em all!! ... no wait ... I mean well done!"
L["gratzNice/GRATZAMONDO!!"] = "GRATZAMONDO!!"
L["gratzNice/GRATZAMONDO!! :D"] = "GRATZAMONDO!! :D"
L["gratzNice/Great Achievement, %s! keep up the aweshumm :D"] = "Great Achievement, %s! keep up the aweshumm :D"
L["gratzNice/Great achievement, %s!!!"] = "Great achievement, %s!!!"
L["gratzNice/Happy Birth ... DOH ... I mean congratulations on your achievement, %s!"] = "Happy Birth ... DOH ... I mean congratulations on your achievement, %s!"
L["gratzNice/Have 10 cookies for THAT achievement, %s!! Great Job!"] = "Have 10 cookies for THAT achievement, %s!! Great Job!"
L["gratzNice/Have a cookie for THAT achievement, %s! Well earned!"] = "Have a cookie for THAT achievement, %s! Well earned!"
L["gratzNice/I do believe that you got a nice cheevo!"] = "I do believe that you got a nice cheevo!"
L["gratzNice/I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P"] = "I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P"
L["gratzNice/I salute that achievement entirely!"] = "I salute that achievement entirely!"
L["gratzNice/I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D"] = "I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D"
L["gratzNice/If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!"] = "If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!"
L["gratzNice/If Illidan saw that he'd HAVE to admit that %s was prepared!"] = "If Illidan saw that he'd HAVE to admit that %s was prepared!"
L["gratzNice/If that achievement were any brighter it would sparkle in the sky, %s!"] = "If that achievement were any brighter it would sparkle in the sky, %s!"
L["gratzNice/If that were a trick shot it'd break the table for being so epic!"] = "If that were a trick shot it'd break the table for being so epic!"
L["gratzNice/If you achieve it, %s, Achievements will come! ... or baseball fields :/"] = "If you achieve it, %s, Achievements will come! ... or baseball fields :/"
L["gratzNice/In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!"] = "In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!"
L["gratzNice/Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!"] = "Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!"
L["gratzNice/It's a great day for a great achievement such as that one!"] = "It's a great day for a great achievement such as that one!"
L["gratzNice/Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D"] = "Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D"
L["gratzNice/Like a rocket, that achievement soared, %s! Great one!"] = "Like a rocket, that achievement soared, %s! Great one!"
L["gratzNice/Look at the sparkly achievement that just happened!!"] = "Look at the sparkly achievement that just happened!!"
L["gratzNice/Magnifico, %s!"] = "Magnifico, %s!"
L["gratzNice/Maximum Congratulations my fellow guildy!"] = "Maximum Congratulations my fellow guildy!"
L["gratzNice/May all your mounts crowd around you in tribute for that single achievement alone, %s!"] = "May all your mounts crowd around you in tribute for that single achievement alone, %s!"
L["gratzNice/May the grats be with you, %s!"] = "May the grats be with you, %s!"
L["gratzNice/Nice achieve, %s!"] = "Nice achieve, %s!"
L["gratzNice/Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*"] = "Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*"
L["gratzNice/Nice and clean, NICE ... and ... CLEAN ... achievement, %s!"] = "Nice and clean, NICE ... and ... CLEAN ... achievement, %s!"
L["gratzNice/Nice one, %s!"] = "Nice one, %s!"
L["gratzNice/NICE!!"] = "NICE!!"
L["gratzNice/Not even Deathwing would argue that achievement, %s! Congrats!"] = "Not even Deathwing would argue that achievement, %s! Congrats!"
L["gratzNice/oooooh nice achieve, %s! :)"] = "oooooh nice achieve, %s! :)"
L["gratzNice/OOooooh, %s, nice achievement!! :)"] = "OOooooh, %s, nice achievement!! :)"
L["gratzNice/oooOOOOoooooh NICE, %s!"] = "oooOOOOoooooh NICE, %s!"
L["gratzNice/Perfectly executed achievement, %s, top notch, well done!"] = "Perfectly executed achievement, %s, top notch, well done!"
L["gratzNice/Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)"] = "Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)"
L["gratzNice/Pukkachieve :D"] = "Pukkachieve :D"
L["gratzNice/Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!"] = "Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!"
L["gratzNice/Splendid! Keep up the achievements, %s!"] = "Splendid! Keep up the achievements, %s!"
L["gratzNice/That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!"] = "That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!"
L["gratzNice/That achievement was like a bright firework for all to see, %s!"] = "That achievement was like a bright firework for all to see, %s!"
L["gratzNice/THAT ROCKS, %s ... great achievement!!"] = "THAT ROCKS, %s ... great achievement!!"
L["gratzNice/Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)"] = "Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)"
L["gratzNice/Thats great, %s! Well done"] = "Thats great, %s! Well done"
L["gratzNice/Thats plenty brilliant, %s! nice one!"] = "Thats plenty brilliant, %s! nice one!"
L["gratzNice/The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ..."] = "The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ..."
L["gratzNice/The clarity of your achievement echoes through the lands, %s! Well done!"] = "The clarity of your achievement echoes through the lands, %s! Well done!"
L["gratzNice/The magnitude of your achievement will ring through the ages, %s ... congrats! :D"] = "The magnitude of your achievement will ring through the ages, %s ... congrats! :D"
L["gratzNice/The textual proof of your said accomplishment is acknowledged in this congratual fashion."] = "The textual proof of your said accomplishment is acknowledged in this congratual fashion."
L["gratzNice/The wisps of Moonglade chanted %s's name as they got THAT achievement!"] = "The wisps of Moonglade chanted %s's name as they got THAT achievement!"
L["gratzNice/This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!"] = "This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!"
L["gratzNice/This person likes your achievement. This person gives you grats!"] = "This person likes your achievement. This person gives you grats!"
L["gratzNice/Throwing forward my greatest applause for that achievement, %s!"] = "Throwing forward my greatest applause for that achievement, %s!"
L["gratzNice/Top achieve, %s!"] = "Top achieve, %s!"
L["gratzNice/Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!"] = "Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!"
L["gratzNice/We love achievements here, %s!"] = "We love achievements here, %s!"
L["gratzNice/We see you like achievements, %s. We know you like grats, so here is one for you now :D"] = "We see you like achievements, %s. We know you like grats, so here is one for you now :D"
L["gratzNice/Well done on that one! :)"] = "Well done on that one! :)"
L["gratzNice/Well done that one!"] = "Well done that one!"
L["gratzNice/Well done there, specific guild person!!"] = "Well done there, specific guild person!!"
L["gratzNice/Well thats certainly a great achievement, %s, well done!"] = "Well thats certainly a great achievement, %s, well done!"
L["gratzNice/Well, that thar be a nice achievement you got there, %s!"] = "Well, that thar be a nice achievement you got there, %s!"
L["gratzNice/Wellius Dunnikus, %s!"] = "Wellius Dunnikus, %s!"
L["gratzNice/Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!"] = "Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!"
L["gratzNice/Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D"] = "Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D"
L["gratzNice/WOOOHOOO!! well done that guildy!"] = "WOOOHOOO!! well done that guildy!"
L["gratzNice/Wow such awesome, many Congrats!!"] = "Wow such awesome, many Congrats!!"
L["gratzNice/YAY nice achieve, %s!"] = "YAY nice achieve, %s!"
L["gratzNice/You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)"] = "You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)"
L["gratzNice/You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves"] = "You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves"
L["gratzNice/Your accomplishment is acknowledged by this text stating it, %s! Nice one!"] = "Your accomplishment is acknowledged by this text stating it, %s! Nice one!"
L["gratzNice/Your achievement will resonate through time and space with grace, %s!"] = "Your achievement will resonate through time and space with grace, %s!"
L["gratzNice/Your efforts have not gone un-noticed, congratulations, %s! :D"] = "Your efforts have not gone un-noticed, congratulations, %s! :D"
]]
--@end-do-not-package@

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