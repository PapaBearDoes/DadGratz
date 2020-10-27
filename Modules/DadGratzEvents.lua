local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Events = DG:NewModule("Events", "AceEvent-3.0")
local Util = DG:GetModule("Utils")

function Util:Process(message, recipient, channel)
	if DG.db.global["AddonEnabled"] == false then
    return
  end

  local AddonEnabled = DG.db.global["AddonEnabled"]
	message = string.lower(message)
end
