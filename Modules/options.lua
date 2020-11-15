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
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function DadGratz:slashCommand(input)
  if InCombatLockdown() then
    DadGratz:Print(L["CannotAccessOptionsDuringCombat"])
    return
  end
  if not input or input:trim() == "" or input == "help" then
    DadGratz:Print("===== DadGratz =====")
    DadGratz:Print("\n")
    DadGratz:Print("\"/" .. DadGratz.db.profile.mySlashCommand .. "\" or \n")
    DadGratz:Print("\"/" .. DadGratz.db.profile.mySlashCommand .. " help\": This message")
    DadGratz:Print("\"/" .. DadGratz.db.profile.mySlashCommand .. " config\": Brings up the configuration screen.")
    DadGratz:Print("\"/" .. DadGratz.db.profile.mySlashCommand .. " gratz\": Fire off a random Gratz based on your settings.")
    DadGratz:Print("\"/" .. DadGratz.db.profile.mySlashCommand .. " macro\": Create a macro you can place on your actionbars for quick access Gratz.")
  elseif input == "config" then
    DadGratz:ShowConfig()
  elseif input == "gratz" then
    DadGratz:ScheduleTimer("FireGratz", random(DadGratz.db.profile.responseDelayMin, DadGratz.db.profile.responseDelayMax), DadGratz.db.profile.guildMemberName)
    --@do-not-package@
    DadGratz:Print("GratzFired!")
    --@end-do-not-package@
  elseif input == "macro" then
    --@do-not-package@
    DadGratz:Print("CreateMacro")
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
