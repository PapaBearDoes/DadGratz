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
local DadGratz = LibStub("LibInit"):NewAddon(ns, me, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function DadGratz:OnInitialize()
  --Fire up the DB
  DadGratz.db = LibStub("AceDB-3.0"):New("DadGratzDB", DadGratz.dbDefaults, "Default")
  if not DadGratz.db then
    local errorDB = L["ErrorDB"]
    print(errorDB)
  end

  --Register the Profile Callbacks
  DadGratz.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")

  --Create the Dialogs
  --DadGratz:CreateDialogs()

  --Register events
  DadGratz:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT", "CheevoReceived")

  --DadGratz:ScheduleUpdate()
  DadGratz:UpdateGuild()
end

function DadGratz:OnEnable()
  for i, v in ipairs(DadGratz.globals.enableTasks) do
    v(self)
  end
  DadGratz.globals.enableTasks = nil

end

function DadGratz:OnDisable()
end

function DadGratz:UpdateProfile()
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
