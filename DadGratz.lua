local DadGratz = LibStub("AceAddon-3.0"):NewAddon("DadGratz", "AceConsole-3.0")

--Make the LibDataBroker
local DadGratzLDB = LibStub("LibDataBroker-1.1"):NewDataObject("DadGratzLDB", {
  type = "data source",
  text = "DadGratz",
	icon = "Interface\\Icons\\",
	OnTooltipShow = function(tooltip)
		tooltip:AddDoubleLine("");
		tooltip:AddDoubleLine("");
		tooltip:AddDoubleLine("");
	end,
	OnClick = function(self, button)
	end
})

--Make the MiniMap Button
local DadGratzIcon = LibStub("LibDBIcon-1.0")

--Do The Rest Of The Things!


--Functions
function DadGratz:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("DadGratzSV", {
  	minimap = {
    	hide = false,
			minimapPos = 90,
  	},
		DadGratz = {
--			Key = Value,
		}
	})
	DadGratzIcon:Register("DadGratz", DadGratzLDB, self.db.profile.minimap)
end

local safe = {}
safe[1] = "Well, that thar be a nice achievement you got there!"
safe[2] = "Dude thats awesome!"
safe[3] = "Magnifico!"
safe[4] = "Great Achievement! keep up the aweshumm :D"
safe[5] = "Well done that person!!"
safe[6] = "I do believe that you got a nice cheevo!"
safe[7] = "Glad to see the achievement! nice one!"
safe[8] = "OOooooh nice achievement!! :)"
safe[9] = "WOOOHOOO!! well done that guildy!"
safe[10] = "Achievement score = Achievement score + Achievement amount! :D"
safe[11] = "oooooh nice achieve! :)"
safe[12] = "Every time you get an achievement a penguin wants to hug you!"
safe[13] = "Every time you get an achievement a rainbow forms!"
safe[14] = "A great achievement by a great person! :)"
safe[15] = "Every time you get an achievement a dolphin jumps over a double rainbow!"
safe[16] = "That achievement is beaten only by marshmallows, coated in chocolate and sprinkled with choc chips! ... but only just!"
safe[17] = "If you achieve it, Achievements will come! ... or baseball fields :/"
safe[18] = "That guildy deserves a medal... oh wait, we call them achievements... WELL DONE!! :D"
safe[19] = "You got an achievement!.. showing today on front row! [anyone who got that reference deserves a cookie!!]"
safe[20] = "Thats a nice achievement, really, truly, very... well done! most impressed! :)"
safe[21] = "GRATZAMONDO!! :D"
safe[22] = "Perfectly executed achievement, top notch, well done!"
safe[23] = "Thats plenty brilliant! nice one!"
safe[24] = "AHA, the cheevo game is afoot!"
safe[25] = "If that were a trick shot it'd break the table for being so epic!"
safe[26] = "It's a great day for a great achievement such as that one!"
safe[27] = "At the most opportune time, came the most awesome achievement"
safe[28] = "You walk through the achievements with the majesty of an ocean liner cruising the waves"
safe[29] = "We see you like achievements, we know you like grats, so here is one for you now :D"
safe[30] = "May the grats be with you!"
safe[31] = "go for the gold text! the gold text is safe, the gold text is wise!"
safe[32] = "3 blind mice, see how they run... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear.."
safe[33] = "Doing well, keep it up!"
safe[34] = "Plenty of fun to be had when getting those achievements, we all should venture more into that side of things.. make a day of it even? :)"
safe[35] = "Wow such awesome, many Congrats!!"
safe[36] = "!gratz!"
safe[37] = "Epically glorious Achievement!"
safe[38] = "well done on that one! :)"
safe[39] = "awesome"
safe[40] = "Pukkachieve :D"
safe[41] = "nice achieve!"
safe[42] = "top achieve!"
safe[43] = "Thats great dude well done"
safe[44] = "brilliant achieve!"
safe[45] = "We love achievements here!"
safe[46] = "nice one!"
safe[47] = "cool achieve!"
safe[48] = "Great achievement!!!"
safe[49] = "Ah yes, Well done! nice achievement :D"
safe[50] = "Well thats certainly a great achievement, well done!"
safe[51] = "Achievements, achievements everywhere! AND ITS AWESOME!"
safe[52] = "If i had a rainbow, and that rainbow had kittens and those kittens had rainbows of their own that had kittens, that'd be your achievement!!"
safe[53] = "Glad to see another achievement :)"
safe[54] = "Achievements are the key to Azeroth's soul, and you enrich it so with that one :)"
safe[55] = "In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to you it was excellent!"
safe[56] = "I know of at least 100 people who got that achievement, but none of them did it with as much grace as that! well done!!! :P"
safe[57] = "If Illidan saw that he'd HAVE to admit that YOU were prepared!"
safe[58] = "Denver, the last dinosaur, saw your achieve and he danced on the floor!"
safe[59] = "This Grats brought to you by pink furry bunnies dancing in a circle and chanting your name for that epic achievement!"
safe[60] = "Dats an amazin' achieve yo!"
safe[61] = "And this is what i'm talking about, GREAT ACHIEVEMENT!, like really well done!!! :)"
safe[62] = "By Azeroth! you really rocked that achievement!!"
safe[63] = "Wibble wobble wibble wobble, achievement on the plate! congrats! :D"
safe[64] = "Achievements, for getting, sharing and boasting about.. or at least that one is!"
safe[65] = "Look at the sparkly achievement that just happened!!"
safe[66] = "Achievement detected.. Grats initiated!"
safe[67] = "NICE!!"
safe[68] = "Not even Deathwing would argue that achievement! Congrats!"
safe[69] = "Achievement cometh, and grats shalt follow! congratulations!"
safe[70] = "Up through the darkness the shadowy figure arose, it looked at you... it came ever closer!... it shook your hand and congratulated you on that achievement. well done!!"
safe[71] = "... and the grats was to be had for that achievement.. they partied, stayed up late... and in the morning.. they made waffles!.. congrats!"
safe[72] = "The textual proof of your said accomplishment is acknowldged in this congratual fashion."
safe[73] = "Ah Yes, perfectly executed achievement, well done!"
safe[74] = "YAY nice achieve!"
safe[75] = "!!! CONGRATS !!!"
safe[76] = "Happy Birth... DOH.. i mean congratulations on your achievement!"
safe[77] = "Congratulations on that achievement!"
safe[78] = "Splendid! Keep up the achievements!"
safe[79] = "I, ".. UnitName("player").. " salute that achievement Wholely!"
safe[80] = "Well done that one!"
safe[81] = UnitName("player").. " like's your achievement, ".. UnitName("player").. " give you grats!"
safe[82] = "GRATZAMONDO!!"
safe[83] = "Fantastic achievement! from your friendly nighbourhood ".. UnitName("player")
safe[84] = "Your efforts have not gone un-noticed, congratulations! :D"
safe[85] = "The wisps of Moonglade chanted your name as you got THAT achievement!"
safe[86] = "The clarity of your achievement echoes through the lands! well done!"
safe[87] = "Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!"
safe[88] = "Whose the tank?.... uh i mean CONGRATULATIONS! ... whats the mage?.... i dont know.... HE'S THE PRIEST!" -- look up 'whose the tank' on youtube!
safe[89] = "Congrats on the Achievement! :)"
safe[90] = "Like a rocket, that achievement soared! Great one!"
safe[91] = "That achievement was like a bright firework, for all to see!"
safe[92] = "Nice and clean, NICE... and... CLEAN... achievement!"
safe[93] = "Always let your achievement be your guide.. no wait... ... yeah achievement yeah! :D"
safe[94] = "Achievements shall set you free... especially that one! safe JOB!!"
safe[95] = "As we walk through the valley of the achievements of fun, i take a look at my Char and realise i like every single one ..."
safe[96] = "Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!"
safe[97] = "DUUUUUUUDE! nice!"
safe[98] = "Nice Achieve, PARTY TIME! Excellent! *cue air guitar*"
safe[99] = "Achievement be like 'YO CHECK ME OUT' and we're like 'DUDE! We know man, awesome!!'"
safe[100] = "Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz!"
safe[101] = "Maximum Congratulations my fellow guildonian!"
safe[102] = "Throwing forward my greatest applause for that achievement!"
safe[103] = "All the critters in the area are celebrating that achievement, as are we!"
safe[104] = "May all your mounts crowd around you in tribute for that single achievement alone!"
safe[105] = "If that achievement were any brighter it would sparkle in the sky!"
safe[106] = "Your achievement will resonate through time and space with grace!"
safe[107] = "Let loose of your hatred, feeel the warm embrace of achievements....... aaahhhhhhh :D"
safe[108] = "The magnitude of your achievement will ring through the ages... congrats! :D"
safe[109] = "Always let your achievement be your guide!"
safe[110] = "Wellius Dunnikus!"
safe[111] = "Achievement Detected! Grats initiated! ... CONGRATS! :D"
safe[112] = "oooOOOOoooooh NICE!"
safe[113] = "Achievement meet Grats, Grats meet Achievement! ... aww, look how safe they are together!"
safe[114] = "THAT ROCKS... great achievement!!"
safe[115] = "I say, what a lovely achievement you got! set it down over there with the rest of them, theres a safe guildy. congrats btw! :D"
safe[116] = "Gotta collect-em all!! .. no wait i mean well done!"
safe[117] = "Have a cookie for THAT achievement! Well earned!"
safe[118] = "Have 10 cookies for THAT achievement!! Great Job!"
safe[119] = "An achievement walks into a box.... THE CHATBOX! congrats!"
safe[120] = "Your accomplishment is acknowledged by this text stating about it! nice one!"
safe[121] = "EJECTO CHEEVO CUZZZ!! nice! :D"
safe[122] = "*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land.. bring her home!... *SCHHH*"
safe[123] = "The achievement bus is coming and everybodys jumping, stormwind to undercity, the grats are gettin busy.."
safe[124] = "..and, as we celebrate their achievement, another guildy would like to say a few words.. most likely just one word and sound like 'mats', but there we go!"
safe[125] = "And now, we see the achievement.. see it's Yellow glow as it tries to attract a mate.. the Grats as they are commonly known, come out in numbers to show their superiority.. only one will be worthy!"

SLASH_DadGratz = "/dg"
SlashCmdList["DadGratz"] = function(msg)
  SendChatMessage(safe[random(1,125)].."", GUILD, GetDefaultLanguage("player"));
end

SLASH_DadGratz_help = "/dghelp"
SlashCmdList["DadGratz_help"] = function(msg)
  PlaySound(10523)
  print(" ----------------------------------- DadGratz Help ----------------------------- ")
  print("      |cffFF8888/dghelp |cffffff00is for this help!        |cff00E5EE[how else did you get here?]")
  print("      |cffFF8888/dg|cffffff00 or for congratulating in your guild   |cffeeffEE(You need to be in a guild!)")
  print(" ")
  print("             |cffffff00if you want it as a button, use |cffFF8888/macro|cffffff00 and add in |cffFF8888/dg|cffffff00")
  print("       ------------------------------------------------------------------------------------ ")
end
