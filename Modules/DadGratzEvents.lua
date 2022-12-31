local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Events = DG:NewModule("Events", "AceEvent-3.0")
local Timer = DG:GetModule("Timer")
local Util = DG:GetModule("Utils")

function DG:TriggeredEvent(message, recipient, channel, cheevo)
  DG.db.global["CheevoCount"] = DG.db.global["CheevoCount"] + 1
  print("CheevoCount: " .. DG.db.global["CheevoCount"])
  Timer:ScheduleTimer("Process", 5, message, recipient, channel, cheevo, DG.db.global["CheevoCount"])
end

function Timer:Process(message, recipient, channel, cheevo, cheevoCount)
	if DG.db.global["AddonEnabled"] == false then
    return
  end

  local AddonEnabled = DG.db.global["AddonEnabled"]

  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  print("")
  print("=========================")
  if cheevo == true then
    if UnitName("player") == guildy then
      print("That's my achievement, not saying anything in guild chat.")
      DG.db.global["CheevoCount"] = 0
    else
      if cheevoCount > 3 then
        guildy = "everyone"
      end
      print("Not my achievement, gratzing!")
      print("ACHIEVEMENT!")
      print("=========================")
      print("")
      local canGratz = Util:LastRunCheck()
      if canGratz == "Yes" then
        local delay = math.random(2, 20)
        print("Delay: " .. delay)
        print("")
        Timer:ScheduleTimer("pickGratz", delay, guildy)
        DG.db.global["CheevoCount"] = 0
      end
    end
  else
    print("Guild Chat")
    print("=========================")
    print("")
  end
  cheevoCount = nil
end

function Timer:pickGratz(guildy)
  print("=========================")
  print("Testing Cheevo Randomizer")
  print("=========================")
  local pickOne = math.random(1, 40)
  if pickOne >= 1 and pickOne <= 10 then
    gratzTable = "gratzDad"
  elseif pickOne >= 11 and pickOne <= 20 then
    gratzTable = "gratzNice"
  elseif pickOne >= 21 and pickOne <= 30 then
    gratzTable = "gratzNaughty"
  elseif pickOne >= 31 and pickOne <= 40 then
    gratzTable = "gratzDark"
  end
  print(gratzTable)
  
  local gratzSize = table.getn(L[gratzTable])
  print("Size" .. gratzSize)

  local gratzRand = math.random(1, gratzSize)
  print("Gratz:")
  print(string.format(L[gratzTable][gratzRand], guildy))

  Util:SendMessage(string.format(L[gratzTable][gratzRand], guildy), guildy, "GUILD")
  print("=========================")
  print("")
end