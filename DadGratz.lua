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
local initOptions = {
  profile = "Default",
  noswitch = false,
  nogui = false,
  nohelp = false,
  enhancedProfile = true
}
local DadGratz = LibStub("LibInit"):NewAddon(ns, me, initOptions, true)
local L = DadGratz:GetLocale()
-- End Imports
--   ######################################################################## ]]
--   ## Do All The Things!!!
--[[FUNCTIONS]]
function DadGratz:OnInitialize()
  DadGratz.db = LibStub("AceDB-3.0"):New("DadGratzSV", DadGratz.dbDefaults, "Default")
  DadGratz.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")
  
  DadGratz.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(DadGratz.db)
  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, DadGratz.options, nil)
  
  if DadGratz.db.profile.testMode == true then
    DadGratz:RegisterEvent("CHAT_MSG_GUILD")
  end

  DadGratz:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT")
  
  DadGratz:MiniMapIcon()
  
  if DadGratz.db.profile.testMode == true then
    print(L["AddonName"] .. ": " .. L["TestModeEnabled"])
  end
  DadGratz.db.global.cheevoCount = 0
end

function DadGratz:OnEnable()
  local DadGratzDialog = LibStub("AceConfigDialog-3.0")
  DadGratzOptionFrames = {}
  DadGratzOptionFrames.general = DadGratzDialog:AddToBlizOptions(L["AddonName"], nil, nil, "general")
  DadGratzOptionFrames.custom = DadGratzDialog:AddToBlizOptions(L["AddonName"], L["CustomGratz"], L["AddonName"], "custom")
  DadGratzOptionFrames.profile = DadGratzDialog:AddToBlizOptions(L["AddonName"], L["Profiles"], L["AddonName"], "profile")
end

-- Config window --
function DadGratz:ShowConfig()
  InterfaceOptionsFrame_OpenToCategory(DadGratzOptionFrames.general)
  InterfaceOptionsFrame_OpenToCategory(DadGratzOptionFrames.custom)
  InterfaceOptionsFrame_OpenToCategory(DadGratzOptionFrames.profile)
end
-- End Options --

function DadGratz:UpdateOptions()
  LibStub("AceConfigRegistry-3.0"):NotifyChange(me)
end

function DadGratz:UpdateProfile()
  DadGratz:ScheduleTimer("UpdateProfileDelayed", 0)
end

function DadGratz:OnProfileChanged(event, database, newProfileKey)
  DadGratz.db.profile = database.profile
end

function DadGratz:UpdateProfileDelayed()
  for timerKey, timerValue in DadGratz:IterateModules() do
    if timerValue.db.profile.on then
      if timerValue:IsEnabled() then
        timerValue:Disable()
        timerValue:Enable()
      else
        timerValue:Enable()
      end
    else
      timerValue:Disable()
    end
  end
  DadGratz:UpdateOptions()
end

function DadGratz:OnProfileReset()
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