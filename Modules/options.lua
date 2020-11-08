--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  @file-author@'s DadGratz Addon for World of Warcraft
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local _G = _G
local me, ns = ...
local addon = ns
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function addon:slashCommand(input)
  if InCombatLockdown() then
    addon:Print(L["CannotAccessOptionsDuringCombat"])
    return
  end
  if not input or input:trim() == "" then
    addon:ShowConfig()
  elseif input == "config" then
    addon:ShowConfig()
  elseif input == "gratz" then
    addon:Print("GratzFired!")
  end
end
--[[
     ########################################################################
     |  Last Editted By: @file-author@ - @file-date-iso@
     |  @file-revision@
     |                                                                      |
     '-------------------------.oooO----------------------------------------|
                              (    )     Oooo.
                              \  (     (    )
                               \__)     )  /
                                       (__/                                   ]]
