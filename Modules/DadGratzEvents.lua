local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Events = DG:NewModule("Events", "AceEvent-3.0")
local Timer = DG:NewModule("Timer", "AceTimer-3.0")
local Util = DG:GetModule("Utils")

function Util:Process(message, recipient, channel, cheevo)
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
    else
      print("Not my achievement, gratzing!")
      print("ACHIEVEMENT!")
      print("=========================")
      print("")
      local delay = math.random(2, 20)
      print("Delay: " .. delay)
      print("")
      Timer:ScheduleTimer("pickGratz", delay, guildy)
    end
  else
    print("Guild Chat")
    print("=========================")
    print("")
  end
end

function Timer:pickGratz(guildy)
  local pickOne = math.random(1, 3)
  if pickOne == 1 then
    gratzTable = "gratzDad"
  elseif pickOne == 2 then
    gratzTable = "gratzNice"
  elseif pickOne == 3 then
    gratzTable = "gratzNaughty"
  end
  
  print("=========================")
  print("Testing Cheevo Randomizer")
  print("=========================")
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