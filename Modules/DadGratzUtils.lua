local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

local Util = DG:NewModule("Utils", "AceConsole-3.0")
local Timer = DG:NewModule("Timer", "AceTimer-3.0")

function Util:ConvertTime(Current, Past)
	local Current = Current
	local Past = Past
	local Difference = (Current - Past)
	return Difference
end

function Util:LastRunCheck()
	local Current = time()
	local Past = (DG.LastRunDelayTime + DG.db.global["LockOutTime"])
	if Current > Past then
		return "Yes"
	else
		return "No"
	end
end

function Util:StartsWith(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function Util:SendMessage(message, recipient, channel)
  SendChatMessage(message, channel, "Common", recipient)
end