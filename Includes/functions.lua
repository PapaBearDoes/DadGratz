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
local me, ns = ...
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function DadGratz:CHAT_MSG_GUILD(_,MSG,Auth)
  print("")
  print("======================")
  print(L["GuildMessageReceived"])
  print(L["TestModeEnabled"] .. ", " .. L["triggering"] .. " ...")
  DadGratz:TriggeredEvent(MSG,Auth,"GUILD")
end

function DadGratz:CHAT_MSG_GUILD_ACHIEVEMENT(_,MSG,Auth)
  DadGratz:TriggeredEvent(MSG,Auth,"GUILD")
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