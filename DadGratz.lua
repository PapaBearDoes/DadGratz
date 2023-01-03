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
local DadGratzInitOptions = {
  profile = "Default",
  noswitch = false,
  nogui = false,
  nohelp = false,
  enhancedProfile = true
}
local DadGratz = LibStub("LibInit"):NewAddon(ns, me, DadGratzInitOptions, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")
local L = DadGratz:GetLocale()
-- End Imports
--   ######################################################################## ]]
--   ## Do All The Things!!!
function DG:OnInitialize()
  DadGratz.db = LibStub("AceDB-3.0"):New("DadGratzSV", DadGratz.dbDefaults, "Default")
  if not DadGratz.db then
    print(L["errorDB"])
  end
  DadGratz.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")
  
  DadGratz.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(DadGratz.db)
  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, DadGratz.options, nil)
  
  -- Enable/disable modules based on saved settings
  for name, module in DadGratz:IterateModules() do
    module:SetEnabledState(DadGratz.db.profile.moduleEnabledState[name] or false)
    if module.OnEnable then
      hooksecurefunc(module, "OnEnable", DadGratz.OnModuleEnable_Common)
    end
    if module.OnDisable then
      hooksecurefunc(module, "OnDisable", DadGratz.OnModuleDisable_Common)
    end
  end
  
  DadGratz:RegisterEvent("CHAT_MSG_GUILD")
  DadGratz:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT")
  
  DadGratz:MiniMapIcon()
end

function DadGratz:OnModuleEnable_Common()
end

function DadGratz:OnModuleDisable_Common()
end

function DadGratz:MiniMapIcon()
  DadGratzIcon = LibStub("LibDBIcon-1.0")
  if not DadGratzIcon:IsRegistered(me .. "_mapIcon") then
    DadGratzIcon:Register(me .. "_mapIcon", DGLDB, DadGratz.db.profile.mmIcon)
  end
end

function DadGratz:OnEnable()
  local DadGratzDialog = LibStub("AceConfigDialog-3.0")
  DadGratzOptionFrames = {}
  DadGratzOptionFrames.general = DadGratzDialog:AddToBlizOptions("DadGratz", nil, nil, "general")
  DadGratzOptionFrames.profile = DadGratzDialog:AddToBlizOptions("DadGratz", L["Profiles"], "DadGratz", "profile")
end

function DadGratz:OnDisable()
end

-- Config window --
function DadGratz:ShowConfig()
	InterfaceOptionsFrame_OpenToCategory(DadGratzOptionFrames.profile)
	InterfaceOptionsFrame_OpenToCategory(DadGratzOptionFrames.general)
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

function DadGratz:CHAT_MSG_GUILD(_,MSG,Auth)
  if DadGratz.dbDefaults.profile.TestMode == true then
    print("")
    print("======================")
    print("Guild Message Received")
    print("Test Mode Active, triggering ...")
    DadGratz:TriggeredEvent("Guild Message: " .. MSG,Auth,"Guild",true)
  end
  DadGratz.db.global.lastRun = time()
end

function DadGratz:CHAT_MSG_GUILD_ACHIEVEMENT(_,MSG,Auth)
  print("")
  print("======================")
  print("Guild Cheevo Received")
  DadGratz:TriggeredEvent("Guild Cheevo: " .. MSG,Auth,"Guild",true)
  DadGratz.db.global.lastRun = time()
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