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
local me, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(me, "deDE")
local L = L or {}
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
-- deDE Localization
--@localization(locale="deDE", format="lua_additive_table", same-key-is-true=true, handle-subnamespaces="subtable")@
--@do-not-package@
--[[Translation missing --]]
--[[ L["AddCustomGratz"] = "Add Custom Gratz"--]] 
--[[Translation missing --]]
--[[ L["AddCustomGratzDesc"] = "Add Custom Gratz Desc"--]] 
--[[Translation missing --]]
--[[ L["AddonName"] = "DadGratz"--]] 
--[[Translation missing --]]
--[[ L["BuiltinWeights"] = "Builtin Gratz Weights"--]] 
--[[Translation missing --]]
--[[ L["CustomGratz"] = "Custom Gratz"--]] 
--[[Translation missing --]]
--[[ L["CustomGratzDisabled"] = "Custom Gratz disabled."--]] 
--[[Translation missing --]]
--[[ L["CustomGratzEnabled"] = "Custom Gratz enabled."--]] 
--[[Translation missing --]]
--[[ L["CustomGratzSettings"] = "Custom Gratz Settings"--]] 
--[[Translation missing --]]
--[[ L["CustomWeight"] = "Custom Gratz Weight"--]] 
--[[Translation missing --]]
--[[ L["CustomWeightDesc"] = "Custom Gratz Weight Description"--]] 
--[[Translation missing --]]
--[[ L["DadWeight"] = "Dad Gratz Weight"--]] 
--[[Translation missing --]]
--[[ L["DadWeightDesc"] = "Dad Gratz Weight Description"--]] 
--[[Translation missing --]]
--[[ L["DarkGratz"] = "Dark Humor Gratz"--]] 
--[[Translation missing --]]
--[[ L["DarkGratzDisabled"] = "Dark Humor Gratz disabled."--]] 
--[[Translation missing --]]
--[[ L["DarkGratzEnabled"] = "Dark Humor Gratz enabled."--]] 
--[[Translation missing --]]
--[[ L["DarkOnly"] = "Dark Only"--]] 
--[[Translation missing --]]
--[[ L["DarkWeight"] = "Dark Gratz Weight"--]] 
--[[Translation missing --]]
--[[ L["DarkWeightDesc"] = "Dark Gratz Weight Description"--]] 
--[[Translation missing --]]
--[[ L["DelCustomGratz"] = "List Custom Gratz"--]] 
--[[Translation missing --]]
--[[ L["DelCustomGratzDesc"] = "Click the gratz you wish to delete, a confirmation window will appear. (THIS IS PERMANENT!!!)"--]] 
--[[Translation missing --]]
--[[ L["disabled"] = "disabled"--]] 
--[[Translation missing --]]
--[[ L["DoCustomGratz"] = "Do Custom Gratz"--]] 
--[[Translation missing --]]
--[[ L["DoCustomGratzDesc"] = "Do Custom Gratz"--]] 
--[[Translation missing --]]
--[[ L["DoDarkGratz"] = "Do Dark Humor Gratz"--]] 
--[[Translation missing --]]
--[[ L["DoDarkGratzDesc"] = "Do Dark Humor Gratz Description"--]] 
--[[Translation missing --]]
--[[ L["DoDarkGratzToggle"] = "Do Dark Humor Gratz"--]] 
--[[Translation missing --]]
--[[ L["DoNaughtyGratz"] = "Do Naughty Gratz"--]] 
--[[Translation missing --]]
--[[ L["DoNaughtyGratzDesc"] = "Do Naughty Gratz Description"--]] 
--[[Translation missing --]]
--[[ L["DoNaughtyGratzToggle"] = "Do Naughty Gratz"--]] 
--[[Translation missing --]]
--[[ L["enabled"] = "enabled"--]] 
--[[Translation missing --]]
--[[ L["everyone"] = "everyone"--]] 
--[[Translation missing --]]
--[[ L["general"] = "general"--]] 
--[[Translation missing --]]
--[[ L["GeneralSettings"] = "General Settings"--]] 
--[[Translation missing --]]
--[[ L["GratzOptions"] = "Gratz Options"--]] 
--[[Translation missing --]]
--[[ L["GratzWeights"] = "Gratz Weights"--]] 
--[[Translation missing --]]
--[[ L["GuildAchievementReceived"] = "Guild Achievement Received"--]] 
--[[Translation missing --]]
--[[ L["GuildMessageReceived"] = "Guild Message Received"--]] 
--[[Translation missing --]]
--[[ L["ListCustomGratz"] = "List Custom Gratz"--]] 
--[[Translation missing --]]
--[[ L["ListCustomGratzDesc"] = "Click the gratz you wish to delete, a confirmation window will appear. (THIS IS PERMANENT!!!)"--]] 
--[[Translation missing --]]
--[[ L["MyAchievement"] = "That's my achievement, not responding."--]] 
--[[Translation missing --]]
--[[ L["NaughtyAndDark"] = "Naughty and Dark"--]] 
--[[Translation missing --]]
--[[ L["NaughtyGratz"] = "Naughty Gratz"--]] 
--[[Translation missing --]]
--[[ L["NaughtyGratzDisabled"] = "Naughty Gratz disabled."--]] 
--[[Translation missing --]]
--[[ L["NaughtyGratzEnabled"] = "Naughty Gratz enabled."--]] 
--[[Translation missing --]]
--[[ L["NaughtyOnly"] = "Naughty Only"--]] 
--[[Translation missing --]]
--[[ L["NaughtyWeight"] = "Naughty Gratz Weight"--]] 
--[[Translation missing --]]
--[[ L["NaughtyWeightDesc"] = "Naughty Gratz Weight Description"--]] 
--[[Translation missing --]]
--[[ L["Neither"] = "Neither"--]] 
--[[Translation missing --]]
--[[ L["NiceWeight"] = "Nice Gratz Weight"--]] 
--[[Translation missing --]]
--[[ L["NiceWeightDesc"] = "Nice Gratz Weight Description"--]] 
--[[Translation missing --]]
--[[ L["No"] = "No"--]] 
--[[Translation missing --]]
--[[ L["profile"] = "profile"--]] 
--[[Translation missing --]]
--[[ L["Profiles"] = "Profiles"--]] 
--[[Translation missing --]]
--[[ L["RightClick"] = "Right Click"--]] 
--[[Translation missing --]]
--[[ L["RightClickToolTip"] = " to configure addon."--]] 
--[[Translation missing --]]
--[[ L["ShowMinimapButton"] = "Show Minimap Button"--]] 
--[[Translation missing --]]
--[[ L["ShowMinimapButtonDesc"] = "Show Minimap Button"--]] 
--[[Translation missing --]]
--[[ L["TestModeEnabled"] = "Test Mode Enabled"--]] 
--[[Translation missing --]]
--[[ L["triggering"] = "triggering"--]] 
--[[Translation missing --]]
--[[ L["Yes"] = "Yes"--]] 

--@end-do-not-package@
L["gratzDad"] = {
--[[Translation missing --]]
	--[[ ["%s was addicted to soap ... they're clean now though."] = "%s was addicted to soap ... they're clean now though.",--]] 
--[[Translation missing --]]
	--[[ ["Hello %s's achievement. I'm Dad."] = "Hello %s's achievement. I'm Dad.",--]] 
--[[Translation missing --]]
	--[[ ["I totally predicted %s's achievement there!"] = "I totally predicted %s's achievement there!",--]] 
--[[Translation missing --]]
	--[[ ["I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me."] = "I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me.",--]] 
--[[Translation missing --]]
	--[[ ["Two of %s's achievements walked into a bar. The third ducked."] = "Two of %s's achievements walked into a bar. The third ducked.",--]] 
}

L["gratzDark"] = {
--[[Translation missing --]]
	--[[ ["Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?"] = "Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?",--]] 
--[[Translation missing --]]
	--[[ ["I thought about telling a dead baby joke for that achievement, but then decided it was best to abort."] = "I thought about telling a dead baby joke for that achievement, but then decided it was best to abort.",--]] 
--[[Translation missing --]]
	--[[ ["If you think I'd joke about %s's achievements and their dementia, you can just forget about it."] = "If you think I'd joke about %s's achievements and their dementia, you can just forget about it.",--]] 
--[[Translation missing --]]
	--[[ ["Much like a blind person telling their partner they are seeing someone ... that acheivement was either great ... or really bad."] = "Much like a blind person telling their partner they are seeing someone ... that acheivement was either great ... or really bad.",--]] 
--[[Translation missing --]]
	--[[ ["Much like the rest of American Gen Z who are alive, %s survived that achievement without getting shot ..."] = "Much like the rest of American Gen Z who are alive, %s survived that achievement without getting shot ...",--]] 
--[[Translation missing --]]
	--[[ ["'One man's trash is another man's achievement' is a wonderful saying ... but a really bad way of finding out you were adopted."] = "'One man's trash is another man's achievement' is a wonderful saying ... but a really bad way of finding out you were adopted.",--]] 
--[[Translation missing --]]
	--[[ ["That achievement is like food; not everyone gets it."] = "That achievement is like food; not everyone gets it.",--]] 
}

L["gratzNaughty"] = {
--[[Translation missing --]]
	--[[ ["%s stole a bunch of viagra and that achievement from the drugstore. Now they're a hardened criminal."] = "%s stole a bunch of viagra and that achievement from the drugstore. Now they're a hardened criminal.",--]] 
--[[Translation missing --]]
	--[[ ["Continue to collect achievements like that %s, and you'll be a cunning linguist in no time!"] = "Continue to collect achievements like that %s, and you'll be a cunning linguist in no time!",--]] 
--[[Translation missing --]]
	--[[ ["How does one tell the difference between %s, and a submissive? Ask them what a Dungeon Master is ..."] = "How does one tell the difference between %s, and a submissive? Ask them what a Dungeon Master is ...",--]] 
--[[Translation missing --]]
	--[[ ["Is that an achievement you got there %s, or are you just happy to see me?"] = "Is that an achievement you got there %s, or are you just happy to see me?",--]] 
--[[Translation missing --]]
	--[[ ["Kinky is playfully reminding your partner that the soft achievements can be used for tickles ... Perverted is slapping them with that achievement."] = "Kinky is playfully reminding your partner that the soft achievements can be used for tickles ... Perverted is slapping them with that achievement.",--]] 
--[[Translation missing --]]
	--[[ ["Much like achievement hunting, one never knows exactly where to look when eating a banana. Congrats, %s!"] = "Much like achievement hunting, one never knows exactly where to look when eating a banana. Congrats, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Ooo, such a *big* achievement, %s. You're such a good player."] = "Ooo, such a *big* achievement, %s. You're such a good player.",--]] 
--[[Translation missing --]]
	--[[ ["That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are."] = "That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are.",--]] 
--[[Translation missing --]]
	--[[ ["These achievement jokes cum pretty easy once you get going ..."] = "These achievement jokes cum pretty easy once you get going ...",--]] 
--[[Translation missing --]]
	--[[ ["We had %s pegged from the beginning. Congrats!"] = "We had %s pegged from the beginning. Congrats!",--]] 
}

L["gratzNice"] = {
--[[Translation missing --]]
	--[[ ["!!! CONGRATS !!!"] = "!!! CONGRATS !!!",--]] 
--[[Translation missing --]]
	--[[ ["!gratz!"] = "!gratz!",--]] 
--[[Translation missing --]]
	--[[ ["%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D"] = "%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D",--]] 
--[[Translation missing --]]
	--[[ ["*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*"] = "*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*",--]] 
--[[Translation missing --]]
	--[[ ["... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!"] = "... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!",--]] 
--[[Translation missing --]]
	--[[ ["... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!"] = "... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!",--]] 
--[[Translation missing --]]
	--[[ ["3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear.."] = "3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear..",--]] 
--[[Translation missing --]]
	--[[ ["A great achievement by a great person! :)"] = "A great achievement by a great person! :)",--]] 
--[[Translation missing --]]
	--[[ ["Achievement cometh, and grats shalt follow! Congratulations!"] = "Achievement cometh, and grats shalt follow! Congratulations!",--]] 
--[[Translation missing --]]
	--[[ ["Achievement detected ... Grats initiated!"] = "Achievement detected ... Grats initiated!",--]] 
--[[Translation missing --]]
	--[[ ["Achievement Detected! Grats initiated! ... CONGRATS! :D"] = "Achievement Detected! Grats initiated! ... CONGRATS! :D",--]] 
--[[Translation missing --]]
	--[[ ["Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!"] = "Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!",--]] 
--[[Translation missing --]]
	--[[ ["Achievement score = Achievement score + Achievement amount! :D"] = "Achievement score = Achievement score + Achievement amount! :D",--]] 
--[[Translation missing --]]
	--[[ ["Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)"] = "Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)",--]] 
--[[Translation missing --]]
	--[[ ["Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'"] = "Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'",--]] 
--[[Translation missing --]]
	--[[ ["Achievements shall set you free ... especially that one! GOOD JOB, %s!!"] = "Achievements shall set you free ... especially that one! GOOD JOB, %s!!",--]] 
--[[Translation missing --]]
	--[[ ["Achievements, %s, for getting, sharing and boasting about ... or at least that one is!"] = "Achievements, %s, for getting, sharing and boasting about ... or at least that one is!",--]] 
--[[Translation missing --]]
	--[[ ["Achievements, achievements everywhere! AND ITS AWESOME!"] = "Achievements, achievements everywhere! AND ITS AWESOME!",--]] 
--[[Translation missing --]]
	--[[ ["Ah Yes, %s, perfectly executed achievement, well done!"] = "Ah Yes, %s, perfectly executed achievement, well done!",--]] 
--[[Translation missing --]]
	--[[ ["Ah yes, Well done! Nice achievement, %s! :D"] = "Ah yes, Well done! Nice achievement, %s! :D",--]] 
--[[Translation missing --]]
	--[[ ["AHA, the cheevo game is afoot!"] = "AHA, the cheevo game is afoot!",--]] 
--[[Translation missing --]]
	--[[ ["All the critters in the area are celebrating that achievement, %s, as are we!"] = "All the critters in the area are celebrating that achievement, %s, as are we!",--]] 
--[[Translation missing --]]
	--[[ ["Always let your achievement be your guide, %s!"] = "Always let your achievement be your guide, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D"] = "Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D",--]] 
--[[Translation missing --]]
	--[[ ["An achievement walks into a box ... THE CHATBOX! *badumtchsss"] = "An achievement walks into a box ... THE CHATBOX! *badumtchsss",--]] 
--[[Translation missing --]]
	--[[ ["And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!"] = "And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!",--]] 
--[[Translation missing --]]
	--[[ ["And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)"] = "And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)",--]] 
--[[Translation missing --]]
	--[[ ["As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ..."] = "As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ...",--]] 
--[[Translation missing --]]
	--[[ ["At the most opportune time, %s came in with the most awesome achievement!"] = "At the most opportune time, %s came in with the most awesome achievement!",--]] 
--[[Translation missing --]]
	--[[ ["Awesome, %s!"] = "Awesome, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Brilliant achieve, %s!"] = "Brilliant achieve, %s!",--]] 
--[[Translation missing --]]
	--[[ ["By Azeroth! you really rocked that achievement, %s!!"] = "By Azeroth! you really rocked that achievement, %s!!",--]] 
--[[Translation missing --]]
	--[[ ["Congrats on the Achievement, %s! :)"] = "Congrats on the Achievement, %s! :)",--]] 
--[[Translation missing --]]
	--[[ ["Congratulations on that achievement, %s!"] = "Congratulations on that achievement, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Cool achieve, %s!"] = "Cool achieve, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Dats an amazin' achieve, %s!"] = "Dats an amazin' achieve, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Denver, the last dinosaur, saw your achieve and he danced on the floor!"] = "Denver, the last dinosaur, saw your achieve and he danced on the floor!",--]] 
--[[Translation missing --]]
	--[[ ["Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!"] = "Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!",--]] 
--[[Translation missing --]]
	--[[ ["Doing well, keep it up, %s!"] = "Doing well, keep it up, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Dude, %s, thats awesome!"] = "Dude, %s, thats awesome!",--]] 
--[[Translation missing --]]
	--[[ ["DUUUUUUUDE! Nice, %s!"] = "DUUUUUUUDE! Nice, %s!",--]] 
--[[Translation missing --]]
	--[[ ["EJECTO CHEEVO CUZZZ!! nice! :D"] = "EJECTO CHEEVO CUZZZ!! nice! :D",--]] 
--[[Translation missing --]]
	--[[ ["Epically glorious Achievement!"] = "Epically glorious Achievement!",--]] 
--[[Translation missing --]]
	--[[ ["Every time you get an achievement a dolphin jumps over a double rainbow!"] = "Every time you get an achievement a dolphin jumps over a double rainbow!",--]] 
--[[Translation missing --]]
	--[[ ["Every time you get an achievement a penguin wants to hug you!"] = "Every time you get an achievement a penguin wants to hug you!",--]] 
--[[Translation missing --]]
	--[[ ["Every time you get an achievement a rainbow forms!"] = "Every time you get an achievement a rainbow forms!",--]] 
--[[Translation missing --]]
	--[[ ["Fantastic achievement, %s! from your friendly neighborhood guildmatet."] = "Fantastic achievement, %s! from your friendly neighborhood guildmatet.",--]] 
--[[Translation missing --]]
	--[[ ["Glad to see another achievement :)"] = "Glad to see another achievement :)",--]] 
--[[Translation missing --]]
	--[[ ["Glad to see the achievement! nice one, %s!"] = "Glad to see the achievement! nice one, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Go for the gold text, %s! The gold text is good ... the gold text is wise."] = "Go for the gold text, %s! The gold text is good ... the gold text is wise.",--]] 
--[[Translation missing --]]
	--[[ ["Gotta collect-em all!! ... no wait ... I mean well done!"] = "Gotta collect-em all!! ... no wait ... I mean well done!",--]] 
--[[Translation missing --]]
	--[[ ["GRATZAMONDO!!"] = "GRATZAMONDO!!",--]] 
--[[Translation missing --]]
	--[[ ["GRATZAMONDO!! :D"] = "GRATZAMONDO!! :D",--]] 
--[[Translation missing --]]
	--[[ ["Great Achievement, %s! keep up the aweshumm :D"] = "Great Achievement, %s! keep up the aweshumm :D",--]] 
--[[Translation missing --]]
	--[[ ["Great achievement, %s!!!"] = "Great achievement, %s!!!",--]] 
--[[Translation missing --]]
	--[[ ["Happy Birth ... DOH ... I mean congratulations on your achievement, %s!"] = "Happy Birth ... DOH ... I mean congratulations on your achievement, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Have 10 cookies for THAT achievement, %s!! Great Job!"] = "Have 10 cookies for THAT achievement, %s!! Great Job!",--]] 
--[[Translation missing --]]
	--[[ ["Have a cookie for THAT achievement, %s! Well earned!"] = "Have a cookie for THAT achievement, %s! Well earned!",--]] 
--[[Translation missing --]]
	--[[ ["I do believe that you got a nice cheevo!"] = "I do believe that you got a nice cheevo!",--]] 
--[[Translation missing --]]
	--[[ ["I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P"] = "I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P",--]] 
--[[Translation missing --]]
	--[[ ["I salute that achievement entirely!"] = "I salute that achievement entirely!",--]] 
--[[Translation missing --]]
	--[[ ["I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D"] = "I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D",--]] 
--[[Translation missing --]]
	--[[ ["If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!"] = "If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!",--]] 
--[[Translation missing --]]
	--[[ ["If Illidan saw that he'd HAVE to admit that %s was prepared!"] = "If Illidan saw that he'd HAVE to admit that %s was prepared!",--]] 
--[[Translation missing --]]
	--[[ ["If that achievement were any brighter it would sparkle in the sky, %s!"] = "If that achievement were any brighter it would sparkle in the sky, %s!",--]] 
--[[Translation missing --]]
	--[[ ["If that were a trick shot it'd break the table for being so epic!"] = "If that were a trick shot it'd break the table for being so epic!",--]] 
--[[Translation missing --]]
	--[[ ["If you achieve it, %s, Achievements will come! ... or baseball fields :/"] = "If you achieve it, %s, Achievements will come! ... or baseball fields :/",--]] 
--[[Translation missing --]]
	--[[ ["In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!"] = "In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!",--]] 
--[[Translation missing --]]
	--[[ ["Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!"] = "Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!",--]] 
--[[Translation missing --]]
	--[[ ["It's a great day for a great achievement such as that one!"] = "It's a great day for a great achievement such as that one!",--]] 
--[[Translation missing --]]
	--[[ ["Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D"] = "Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D",--]] 
--[[Translation missing --]]
	--[[ ["Like a rocket, that achievement soared, %s! Great one!"] = "Like a rocket, that achievement soared, %s! Great one!",--]] 
--[[Translation missing --]]
	--[[ ["Look at the sparkly achievement that just happened!!"] = "Look at the sparkly achievement that just happened!!",--]] 
--[[Translation missing --]]
	--[[ ["Magnifico, %s!"] = "Magnifico, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Maximum Congratulations my fellow guildy!"] = "Maximum Congratulations my fellow guildy!",--]] 
--[[Translation missing --]]
	--[[ ["May all your mounts crowd around you in tribute for that single achievement alone, %s!"] = "May all your mounts crowd around you in tribute for that single achievement alone, %s!",--]] 
--[[Translation missing --]]
	--[[ ["May the grats be with you, %s!"] = "May the grats be with you, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Nice achieve, %s!"] = "Nice achieve, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*"] = "Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*",--]] 
--[[Translation missing --]]
	--[[ ["Nice and clean, NICE ... and ... CLEAN ... achievement, %s!"] = "Nice and clean, NICE ... and ... CLEAN ... achievement, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Nice one, %s!"] = "Nice one, %s!",--]] 
--[[Translation missing --]]
	--[[ ["NICE!!"] = "NICE!!",--]] 
--[[Translation missing --]]
	--[[ ["Not even Deathwing would argue that achievement, %s! Congrats!"] = "Not even Deathwing would argue that achievement, %s! Congrats!",--]] 
--[[Translation missing --]]
	--[[ ["oooooh nice achieve, %s! :)"] = "oooooh nice achieve, %s! :)",--]] 
--[[Translation missing --]]
	--[[ ["OOooooh, %s, nice achievement!! :)"] = "OOooooh, %s, nice achievement!! :)",--]] 
--[[Translation missing --]]
	--[[ ["oooOOOOoooooh NICE, %s!"] = "oooOOOOoooooh NICE, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Perfectly executed achievement, %s, top notch, well done!"] = "Perfectly executed achievement, %s, top notch, well done!",--]] 
--[[Translation missing --]]
	--[[ ["Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)"] = "Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)",--]] 
--[[Translation missing --]]
	--[[ ["Pukkachieve :D"] = "Pukkachieve :D",--]] 
--[[Translation missing --]]
	--[[ ["Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!"] = "Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Splendid! Keep up the achievements, %s!"] = "Splendid! Keep up the achievements, %s!",--]] 
--[[Translation missing --]]
	--[[ ["That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!"] = "That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!",--]] 
--[[Translation missing --]]
	--[[ ["That achievement was like a bright firework for all to see, %s!"] = "That achievement was like a bright firework for all to see, %s!",--]] 
--[[Translation missing --]]
	--[[ ["THAT ROCKS, %s ... great achievement!!"] = "THAT ROCKS, %s ... great achievement!!",--]] 
--[[Translation missing --]]
	--[[ ["Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)"] = "Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)",--]] 
--[[Translation missing --]]
	--[[ ["Thats great, %s! Well done"] = "Thats great, %s! Well done",--]] 
--[[Translation missing --]]
	--[[ ["Thats plenty brilliant, %s! nice one!"] = "Thats plenty brilliant, %s! nice one!",--]] 
--[[Translation missing --]]
	--[[ ["The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ..."] = "The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ...",--]] 
--[[Translation missing --]]
	--[[ ["The clarity of your achievement echoes through the lands, %s! Well done!"] = "The clarity of your achievement echoes through the lands, %s! Well done!",--]] 
--[[Translation missing --]]
	--[[ ["The magnitude of your achievement will ring through the ages, %s ... congrats! :D"] = "The magnitude of your achievement will ring through the ages, %s ... congrats! :D",--]] 
--[[Translation missing --]]
	--[[ ["The textual proof of your said accomplishment is acknowledged in this congratual fashion."] = "The textual proof of your said accomplishment is acknowledged in this congratual fashion.",--]] 
--[[Translation missing --]]
	--[[ ["The wisps of Moonglade chanted %s's name as they got THAT achievement!"] = "The wisps of Moonglade chanted %s's name as they got THAT achievement!",--]] 
--[[Translation missing --]]
	--[[ ["This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!"] = "This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!",--]] 
--[[Translation missing --]]
	--[[ ["This person likes your achievement. This person gives you grats!"] = "This person likes your achievement. This person gives you grats!",--]] 
--[[Translation missing --]]
	--[[ ["Throwing forward my greatest applause for that achievement, %s!"] = "Throwing forward my greatest applause for that achievement, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Top achieve, %s!"] = "Top achieve, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!"] = "Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!",--]] 
--[[Translation missing --]]
	--[[ ["We love achievements here, %s!"] = "We love achievements here, %s!",--]] 
--[[Translation missing --]]
	--[[ ["We see you like achievements, %s. We know you like grats, so here is one for you now :D"] = "We see you like achievements, %s. We know you like grats, so here is one for you now :D",--]] 
--[[Translation missing --]]
	--[[ ["Well done on that one! :)"] = "Well done on that one! :)",--]] 
--[[Translation missing --]]
	--[[ ["Well done that one!"] = "Well done that one!",--]] 
--[[Translation missing --]]
	--[[ ["Well done there, specific guild person!!"] = "Well done there, specific guild person!!",--]] 
--[[Translation missing --]]
	--[[ ["Well thats certainly a great achievement, %s, well done!"] = "Well thats certainly a great achievement, %s, well done!",--]] 
--[[Translation missing --]]
	--[[ ["Well, that thar be a nice achievement you got there, %s!"] = "Well, that thar be a nice achievement you got there, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Wellius Dunnikus, %s!"] = "Wellius Dunnikus, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!"] = "Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!",--]] 
--[[Translation missing --]]
	--[[ ["Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D"] = "Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D",--]] 
--[[Translation missing --]]
	--[[ ["WOOOHOOO!! well done that guildy!"] = "WOOOHOOO!! well done that guildy!",--]] 
--[[Translation missing --]]
	--[[ ["Wow such awesome, many Congrats!!"] = "Wow such awesome, many Congrats!!",--]] 
--[[Translation missing --]]
	--[[ ["YAY nice achieve, %s!"] = "YAY nice achieve, %s!",--]] 
--[[Translation missing --]]
	--[[ ["You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)"] = "You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)",--]] 
--[[Translation missing --]]
	--[[ ["You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves"] = "You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves",--]] 
--[[Translation missing --]]
	--[[ ["Your accomplishment is acknowledged by this text stating it, %s! Nice one!"] = "Your accomplishment is acknowledged by this text stating it, %s! Nice one!",--]] 
--[[Translation missing --]]
	--[[ ["Your achievement will resonate through time and space with grace, %s!"] = "Your achievement will resonate through time and space with grace, %s!",--]] 
--[[Translation missing --]]
	--[[ ["Your efforts have not gone un-noticed, congratulations, %s! :D"] = "Your efforts have not gone un-noticed, congratulations, %s! :D",--]] 
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