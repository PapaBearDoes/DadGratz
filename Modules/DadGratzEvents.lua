local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Events = DG:NewModule("Events", "AceEvent-3.0")
local Timer = DG:GetModule("Timer")
local Util = DG:GetModule("Utils")

function DG:TriggeredEvent(message, recipient, channel, cheevo)
  DG.db.global["CheevoCount"] = DG.db.global["CheevoCount"] + 1
  if DG.db.global["CheevoCount"] < 2 then
    Timer:ScheduleTimer("Process", 10, message, recipient, channel, cheevo)
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
      DG.db.global["CheevoCount"] = 0
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
  
  local gratzSize = table.getn(L[gratzTable])

  local gratzRand = math.random(1, gratzSize)
  Util:SendMessage(string.format(L[gratzTable][gratzRand], guildy), guildy, "GUILD")
end