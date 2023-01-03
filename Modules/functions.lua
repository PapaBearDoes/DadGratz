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
function DadGratz:LastRunCheck()
	local Current = time()
	local Past = (DadGratz.db.global.lastRun + DadGratz.db.global.lockOutTime)
	if Current > Past then
		return "Yes"
	else
		return "No"
	end
end

function DadGratz:TableLength(t)
   local count = 0
   for _ in pairs(t) do count = count + 1 end
   return count
end

function DadGratz:FindGratz(t, n)
  local count = 0
  for k, v in pairs(t) do
    count = count + 1
    if count == n then
      return k
    end
  end
end

function DadGratz:StartsWith(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function DadGratz:SendMessage(message, recipient, channel)
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