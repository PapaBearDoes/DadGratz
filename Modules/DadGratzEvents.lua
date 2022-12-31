local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Events = DG:NewModule("Events", "AceEvent-3.0")
local Timer = DG:GetModule("Timer")
local Util = DG:GetModule("Utils")

function Util:Process(message, recipient, channel, cheevo, cheevoCount)
	if DG.db.global["AddonEnabled"] == false then
    return
  end

  local AddonEnabled = DG.db.global["AddonEnabled"]

  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  print("")
  print("=========================")
  if cheevo == true then
    if cheevoCount > 3 then
      guildy = "everyone"
    end

    if UnitName("player") == guildy then
      print("That's my achievement, not saying anything in guild chat.")
    else
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
      end
      cheevoCount = 0
    end
  else
    print("Guild Chat")
    print("=========================")
    print("")
  end
end

function Timer:pickGratz(guildy)
  print("=========================")
  print("Testing Cheevo Randomizer")
  print("=========================")
  local pickOne = math.random(1, 40)
  if pickOne >= 1 and <= 10 then
    gratzTable = "gratzDad"
  elseif pickOne >= 11 and <= 20 then
    gratzTable = "gratzNice"
  elseif pickOne >= 21 and <= 30 then
    gratzTable = "gratzNaughty"
  elseif pickOne >= 31 and <= 40 then
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