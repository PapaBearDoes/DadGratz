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
  if not input or input:trim() == "" or input == "help" then
    addon:Print("===== DadGratz =====")
    addon:Print("\n")
    addon:Print("\"/" .. addon.db.profile.mySlashCommand .. "\" or \n")
    addon:Print("\"/" .. addon.db.profile.mySlashCommand .. " help\": This message")
    addon:Print("\"/" .. addon.db.profile.mySlashCommand .. " config\": Brings up the configuration screen.")
    addon:Print("\"/" .. addon.db.profile.mySlashCommand .. " gratz\": Fire off a random Gratz based on your settings.")
    addon:Print("\"/" .. addon.db.profile.mySlashCommand .. " macro\": Create a macro you can place on your actionbars for quick access Gratz.")
  elseif input == "config" then
    addon:ShowConfig()
  elseif input == "gratz" then
    addon:FireGratz(addon.db.profile.guildMemberName)
    --@do-not-package@
    addon:Print("GratzFired!")
    --@end-do-not-package@
  elseif input == "macro" then
    --@do-not-package@
    addon:Print("CreateMacro")
    --@end-do-not-package@
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
