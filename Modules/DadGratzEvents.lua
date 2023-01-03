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
local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Events = DG:NewModule("Events", "AceEvent-3.0")
local Timer = DG:GetModule("Timer")
local Util = DG:GetModule("Utils")
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function DG:TriggeredEvent(message, recipient, channel, cheevo)
  DG.db.global["CheevoCount"] = DG.db.global["CheevoCount"] + 1
  if DG.db.global["CheevoCount"] < 2 then
    Timer:ScheduleTimer("Process", 5, message, recipient, channel, cheevo)
  end
end

function Timer:Process(message, recipient, channel, cheevo)
	if DG.db.global["AddonEnabled"] == false then
    DG.db.global["CheevoCount"] = 0
    return
  end

  local canGratz = Util:LastRunCheck()
  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  if cheevo == true then
    if UnitName("player") == guildy then
      print("That's my cheevo, not responding.")
      DG.db.global["CheevoCount"] = 0
      if DG.db.global["TestMode"] == true then
        local delay = math.random(1, 10)
        Timer:ScheduleTimer("pickGratz", delay, guildy)
      end
    else
      if DG.db.global["CheevoCount"] > 3 then
        guildy = "everyone"
      end

      if canGratz == "Yes" then
        local delay = math.random(1, 10)
        Timer:ScheduleTimer("pickGratz", delay, guildy)
        DG.db.global["CheevoCount"] = 0
      end
    end
  else
    DG.db.global["CheevoCount"] = 0
  end
end

function Timer:pickGratz(guildy)
  local pickone = 0
  if DG.db.global["GratzNaughty"] == true and DG.db.global["GratzDark"] == true then
    print("Naughty and Dark")
    pickOne = math.random(1, 40)
  elseif DG.db.global["GratzNaughty"] == true and DG.db.global["GratzDark"] == false then
    print("Naughty Only")
    pickOne = math.random(1, 30)
  elseif DG.db.global["GratzNaughty"] == false and DG.db.global["GratzDark"] == false then
    print("Neither")
    pickOne = math.random(1, 20)
  elseif DG.db.global["GratzNaughty"] == false and DG.db.global["GratzDark"] == true then
    print("Dark Only")
    pickOne = math.random(1, 40)
    if pickOne >= 21 and pickOne <= 30 then
      pickOne = math.random(1, 20)
    end
  end
  print("PickOne: " .. pickOne)
  
  if pickOne >= 1 and pickOne <= 10 then
    gratzTable = "gratzNice"
  elseif pickOne >= 11 and pickOne <= 20 then
    gratzTable = "gratzDad"
  elseif pickOne >= 21 and pickOne <= 30 then
    gratzTable = "gratzNaughty"
  elseif pickOne >= 31 and pickOne <= 40 then
    gratzTable = "gratzDark"
  end
  print("")
  print("======================")
  print("GratzTable: " .. gratzTable)

  local gratzSize = Util:TableLength(L[gratzTable])
  print("GratzSize: " .. gratzSize)
  
  local gratzRand = math.random(1, gratzSize)
  print("GratzRand: " .. gratzRand)
  
  gratz = Util:FindGratz(L[gratzTable], gratzRand)
  print("Gratz:")
  print(string.format(gratz, guildy))
  
  if DG.db.global["TestMode"] == false then
    Util:SendMessage(string.format(gratz, guildy), guildy, "GUILD")
  end
  print("======================")
  print("")
end

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