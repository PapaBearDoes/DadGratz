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
function addon:OnInitialize()
  --Fire up the DB
  addon.db = LibStub("AceDB-3.0"):New(me, DG_dbDefaults, "Default")
  if not addon.db then
    local errorDB = L["ErrorDB"]
    print(errorDB)
  end

  --Register the Profile Callbacks
  addon.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  addon.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  addon.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")

  --Create the Dialogs
  --addon:CreateDialogs()

  --Register events
  --addon:RegisterEvent("PLAYER_DEAD", "ScheduleUpdate")

  --addon:UpdateIcon()
  --addon:ScheduleUpdate()
  addon:UpdateGuild()
end

function addon:OnEnable()
  for i, v in ipairs(DG_globals.enableTasks) do
    v(self)
  end
  DG_globals.enableTasks = nil

  --addon:ScheduleRepeatingTimer("MainUpdate", 1)
end

function addon:OnDisable()
end

function addon:UpdateProfile()
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
