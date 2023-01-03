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
local _G = _G
--Durrr = select(2, ...)
local me, ns = ...
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function DadGratz:TriggeredEvent(message, recipient, channel, cheevo)
  DadGratz.globals.cheevoCount = DadGratz.globals.cheevoCount + 1
  if DadGratz.globals.cheevoCount < 2 then
    DadGratz:ScheduleTimer("Process", 5, message, recipient, channel, cheevo)
  end
end

function DadGratz:Process(message, recipient, channel, cheevo)
	if DadGratz.dbDefaults.profile.addonEnable == false then
    DadGratz.globals.cheevoCount = 0
    return
  end

  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  if cheevo == true then
    if UnitName("player") == guildy then
      print("That's my cheevo, not responding.")
      DadGratz.globals.cheevoCount = 0
      if DadGratz.dbDefaults.profile.testMode == true then
        local delay = math.random(1, 10)
        DadGratz:ScheduleTimer("pickGratz", delay, guildy)
      end
    else
      if DadGratz.globals.cheevoCount > 3 then
        guildy = "everyone"
      end

      local delay = math.random(1, 10)
      DadGratz:ScheduleTimer("pickGratz", delay, guildy)
      DadGratz.globals.cheevoCount = 0
    end
  else
    DadGratz.globals.cheevoCount = 0
  end
end

function DadGratz:pickGratz(guildy)
  local pickone = 0
  if DadGratz.dbDefaults.profile.gratzNaughty == true and DadGratz.dbDefaults.profile.gratzDark == true then
    print("Naughty and Dark")
    pickOne = math.random(1, 40)
  elseif DadGratz.dbDefaults.profile.gratzNaughty == true and DadGratz.dbDefaults.profile.gratzDark == false then
    print("Naughty Only")
    pickOne = math.random(1, 30)
  elseif DadGratz.dbDefaults.profile.gratzNaughty == false and DadGratz.dbDefaults.profile.gratzDark == false then
    print("Neither")
    pickOne = math.random(1, 20)
  elseif DadGratz.dbDefaults.profile.gratzNaughty == false and DadGratz.dbDefaults.profile.gratzDark == true then
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

  local gratzSize = DadGratz:TableLength(L[gratzTable])
  print("GratzSize: " .. gratzSize)
  
  local gratzRand = math.random(1, gratzSize)
  print("GratzRand: " .. gratzRand)
  
  gratz = DadGratz:FindGratz(L[gratzTable], gratzRand)
  print("Gratz:")
  print(string.format(gratz, guildy))
  
  if DadGratz.dbDefaults.profile.testMode == false then
    DadGratz:SendMessage(string.format(gratz, guildy), guildy, "GUILD")
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