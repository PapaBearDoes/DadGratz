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

local Util = DG:NewModule("Utils", "AceConsole-3.0")
local Timer = DG:NewModule("Timer", "AceTimer-3.0")
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function Util:LastRunCheck()
	local Current = time()
	local Past = (DG.LastRunDelayTime + DG.db.global["LockOutTime"])
	if Current > Past then
		return "Yes"
	else
		return "No"
	end
end

function Util:TableLength(t)
   local count = 0
   for _ in pairs(t) do count = count + 1 end
   return count
end

function Util:FindGratz(t, n)
  local count = 0
  for k, v in pairs(t) do
    count = count + 1
    if count == n then
      return k
    end
  end
end

function Util:StartsWith(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function Util:SendMessage(message, recipient, channel)
  SendChatMessage(message, channel, "Common", recipient)
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