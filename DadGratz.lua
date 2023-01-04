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
local DadGratz = LibStub("LibInit"):NewAddon(ns, me, DadGratzInitOptions, true)
local L = DadGratz:GetLocale()
-- End Imports
--   ######################################################################## ]]
--   ## Do All The Things!!!
-- Create any required hidden frames
DadGratz.frame = CreateFrame("GameTooltip")
DadGratz.frame:SetOwner(WorldFrame, "ANCHOR_NONE")

-- Create DB defaults
DadGratz.dbDefaults = {
  global = {
    lastRun = 0,
    lockOutTime = 5,
    cheevoCount = 0,
  },
  profile = {
    testMode = false,
    doNaughty = true,
    doDark = true,
    mmIcon = {
      hide = false,
      minimapPos = 205,
    },
  },
}

--OptionsTable
DadGratz.options = {
  type = "group",
  name = L["AddonName"],
  args = {
    general = {
      order = 1,
      type = "group",
      name = L["GeneralSettings"],
      cmdInline = true,
      args = {
        separator1 = {
          type = "header",
          name = L["GratzOptions"],
          order = 1,
        },
        doNaughty = {
          order = 2,
          type = "toggle",
          name = L["DoNaughtyGratz"],
          desc = L["DoNaughtyGratzToggle"],
          get = function()
            return DadGratz.db.profile.doNaughty
          end,
          set = function(key, value)
            DadGratz.db.profile.doNaughty = value
            if not DadGratz.db.profile.doNaughty then
              DadGratz.db.profile.doNaughty = value
            end
          end,
        },
        DoDark = {
          order = 3,
          type = "toggle",
          name = L["DoDarkGratz"],
          desc = L["DoDarkGratzToggle"],
          get = function()
            return DadGratz.db.profile.doDark
          end,
          set = function(key, value)
            DadGratz.db.profile.doDark = value
            if not DadGratz.db.profile.doDark then
              DadGratz.db.profile.doDark = value
            end
          end,
        },
        showMinimapButton = {
          order = 6,
          type = "toggle",
          name = L["ShowMinimapButton"],
          desc = L["ShowMinimapButtonDesc"],
          get = function()
            if DadGratz.db.profile.mmIcon.hide == true then
              show = false
            else
              show = true
            end
            return show
          end,
          set = function(key, value)
            if value == true then
              DadGratz.db.profile.mmIcon.hide = false
              DadGratzIcon:Show(me .. "_mapIcon")
            else
              DadGratz.db.profile.mmIcon.hide = true
              DadGratzIcon:Hide(me .. "_mapIcon")
            end
          end,
        },
      },
    },
  },
}

--LDB
DadGratz_LDB = LibStub("LibDataBroker-1.1")
DGLDB = DadGratz_LDB:NewDataObject("DadGratzLDB", {
  type = "data source",
  label = L["AddonName"],
  text = "",
  icon = "Interface\\Icons\\Achievement_guildperk_bartering",
  OnClick = function(frame, click)
    if click == "RightButton" then
      DadGratz:ShowConfig()
    end
  end,
  OnTooltipShow = function(tooltip)
    if not tooltip or not tooltip.AddLine then
      return
    end
    tooltip:AddLine(L["AddonName"] .. " " .. GetAddOnMetadata("DadGratz", "Version"))
    
    if DadGratz.db.profile.doNaughty == true then
      tooltip:AddLine(L["NaughtyGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["NaughtyGratzDisabled"] .. ".")
    end
    if DadGratz.db.profile.doDark == true then
      tooltip:AddLine(L["DarkGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["DarkGratzDisabled"] .. ".")
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(DadGratz:Colorize(L["RightClick"] .. " ", "eda55f") .. L["RightClickToolTip"])
  end,
})

--[[FUNCTIONS]]
function DadGratz:OnInitialize()
  DadGratz.db = LibStub("AceDB-3.0"):New("DadGratzSV", DadGratz.dbDefaults, "Default")
  if not DadGratz.db then
    print(L["errorDB"])
  end
  DadGratz.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  DadGratz.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")
  
  DadGratz.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(DadGratz.db)
  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, DadGratz.options, nil)
  
  DadGratz:RegisterEvent("CHAT_MSG_GUILD")
  DadGratz:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT")
  
  DadGratz:MiniMapIcon()
  
  if DadGratz.db.profile.testMode == true then
    print(L["AddonName"] .. ": " .. L["TestModeEnabled"])
  end
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
  DadGratzOptionFrames.general = DadGratzDialog:AddToBlizOptions(L["AddonName"], nil, nil, L["general"])
  DadGratzOptionFrames.profile = DadGratzDialog:AddToBlizOptions(L["AddonName"], L["Profiles"], L["AddonName"], L["profile"])
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
  if DadGratz.db.profile.testMode == true then
    print("")
    print("======================")
    print(L["GuildMessageReceived"])
    print(L["TestModeEnabled"] .. ", " .. L["triggering"] .. " ...")
    DadGratz:TriggeredEvent(MSG,Auth,"Guild")
  end
  DadGratz.db.global.lastRun = time()
end

function DadGratz:CHAT_MSG_GUILD_ACHIEVEMENT(_,MSG,Auth)
  if DadGratz.db.profile.testMode == true then
    print("")
    print("======================")
    print(L["GuildAchievementReceived"])
  end
  DadGratz:TriggeredEvent(MSG,Auth,"Guild")
  DadGratz.db.global.lastRun = time()
end

function DadGratz:TriggeredEvent(message, recipient, channel)
  DadGratz.db.global.cheevoCount = DadGratz.db.global.cheevoCount + 1
  if DadGratz.db.global.cheevoCount < 2 then
    DadGratz:ScheduleTimer("Process", 5, message, recipient, channel)
  end
end

function DadGratz:Process(message, recipient, channel)
  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  if UnitName("player") == guildy then
    print(L["AddonName"] .. ": " .. L["MyAchievement"])
    if DadGratz.db.profile.testMode == true then
      local delay = math.random(1, 10)
      DadGratz:ScheduleTimer("pickGratz", delay, guildy)
    end
  else
    if DadGratz.db.global.cheevoCount > 3 then
      guildy = L["everyone"]
    end

    local delay = math.random(1, 10)
    DadGratz:ScheduleTimer("pickGratz", delay, guildy)
  end
  DadGratz.db.global.cheevoCount = 0
  end
end

function DadGratz:pickGratz(guildy)
  local pickone = 0
  if DadGratz.db.profile.doNaughty == true and DadGratz.db.profile.doDark == true then
    if DadGratz.db.profile.testMode == true then
      print(L["NaughtyAndDark"])
    end
    pickOne = math.random(1, 40)
  elseif DadGratz.db.profile.doNaughty == true and DadGratz.db.profile.doDark == false then
    if DadGratz.db.profile.testMode == true then
      print(L["NaughtyOnly"])
    end
    pickOne = math.random(1, 30)
  elseif DadGratz.db.profile.doNaughty == false and DadGratz.db.profile.doDark == false then
    if DadGratz.db.profile.testMode == true then
      print(L["Neither"])
    end
    pickOne = math.random(1, 20)
  elseif DadGratz.db.profile.doNaughty == false and DadGratz.db.profile.doDark == true then
    if DadGratz.db.profile.testMode == true then
      print(L["DarkOnly"])
    end
    pickOne = math.random(1, 40)
    if pickOne >= 21 and pickOne <= 30 then
      pickOne = math.random(1, 20)
    end
  end
  if DadGratz.db.profile.testMode == true then
    print("PickOne: " .. pickOne)
  end
  
  if pickOne >= 1 and pickOne <= 10 then
    gratzTable = "gratzNice"
  elseif pickOne >= 11 and pickOne <= 20 then
    gratzTable = "gratzDad"
  elseif pickOne >= 21 and pickOne <= 30 then
    gratzTable = "gratzNaughty"
  elseif pickOne >= 31 and pickOne <= 40 then
    gratzTable = "gratzDark"
  end
  if DadGratz.db.profile.testMode == true then
    print("")
    print("======================")
    print("GratzTable: " .. gratzTable)
  end

  local gratzSize = DadGratz:TableLength(L[gratzTable])
  if DadGratz.db.profile.testMode == true then
    print("GratzSize: " .. gratzSize)
  end
  
  local gratzRand = math.random(1, gratzSize)
  if DadGratz.db.profile.testMode == true then
    print("GratzRand: " .. gratzRand)
  end
  
  gratz = DadGratz:FindGratz(L[gratzTable], gratzRand)
  if DadGratz.db.profile.testMode == true then
    print("Gratz:")
    print(string.format(gratz, guildy))
  end
  
  if DadGratz.db.profile.testMode == false then
    DadGratz:SendMessage(string.format(gratz, guildy), guildy, "GUILD")
  end
  if DadGratz.db.profile.testMode == true then
    print("======================")
    print("")
  end
end

function DadGratz:LastRunCheck()
	local Current = time()
	local Past = (DadGratz.db.global.lastRun + DadGratz.db.global.lockOutTime)
	if Current > Past then
		return L["Yes"]
	else
		return L["No"]
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