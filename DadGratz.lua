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
local DG = {}
-- End Imports
--   ######################################################################## ]]
--   ## Do All The Things!!!
-- Create DB defaults
DadGratz.dbDefaults = {
  global = {
    lastRun = 0,
    lockOutTime = 5,
    cheevoCount = 0,
  },
  profile = {
    testMode = false,
    weight = {
      dad = 0,
      nice = 0,
      custom = 0,
      naughty = 0,
      dark = 0,
    },
    doNaughty = true,
    doDark = true,
    doCustom = true,
    mmIcon = {
      hide = false,
      minimapPos = 205,
    },
    customGratz = {},
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
          order = 1,
          type = "header",
          name = L["GratzOptions"],
        },
        doNaughty = {
          order = 2,
          type = "toggle",
          name = L["DoNaughtyGratz"],
          desc = L["DoNaughtyGratzDesc"],
          get = function()
            return DG.db.profile.doNaughty
          end,
          set = function(key, value)
            DG.db.profile.doNaughty = value
            if not DG.db.profile.doNaughty then
              DG.db.profile.doNaughty = value
            end
          end,
        },
        doDark = {
          order = 3,
          type = "toggle",
          name = L["DoDarkGratz"],
          desc = L["DoDarkGratzDesc"],
          get = function()
            return DG.db.profile.doDark
          end,
          set = function(key, value)
            DG.db.profile.doDark = value
            if not DG.db.profile.doDark then
              DG.db.profile.doDark = value
            end
          end,
        },
        doCustom = {
          order = 4,
          type = "toggle",
          name = L["DoCustomGratz"],
          desc = L["DoCustomGratzDesc"],
          get = function()
            return DG.db.profile.doCustom
          end,
          set = function(key, value)
            DG.db.profile.doCustom = value
            if not DG.db.profile.doCustom then
              DG.db.profile.doCustom = value
            end
          end,
        },
        showMinimapButton = {
          order = 5,
          type = "toggle",
          name = L["ShowMinimapButton"],
          desc = L["ShowMinimapButtonDesc"],
          get = function()
            if DG.db.profile.mmIcon.hide == true then
              show = false
            else
              show = true
            end
            return show
          end,
          set = function(key, value)
            if value == true then
              DG.db.profile.mmIcon.hide = false
              DadGratzIcon:Show(me .. "_mapIcon")
            else
              DG.db.profile.mmIcon.hide = true
              DadGratzIcon:Hide(me .. "_mapIcon")
            end
          end
        },
        separator2 = {
          order = 6,
          type = "header",
          name = L["BuiltinWeights"],
        },
        dadWeight = {
          order = 7,
          type = "range",
          name = L["DadWeight"],
          desc = L["DadWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DG.db.profile.weight.dad
          end,
          set = function(key, value)
            DG.db.profile.weight.dad = value
          end,
        },
        niceWeight = {
          order = 8,
          type = "range",
          name = L["NiceWeight"],
          desc = L["NiceWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DG.db.profile.weight.nice
          end,
          set = function(key, value)
            DG.db.profile.weight.nice = value
          end,
        },
        separator3 = {
          order = 9,
          type = "header",
          name = L["GratzWeights"],
        },
        customWeight = {
          order = 10,
          type = "range",
          name = L["CustomWeight"],
          desc = L["CustomWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DG.db.profile.weight.custom
          end,
          set = function(key, value)
            DG.db.profile.weight.custom = value
          end,
          disabled = function()
            return (DG.db.profile.doCustom == false)
          end,
        },
        naughtyWeight = {
          order = 11,
          type = "range",
          name = L["NaughtyWeight"],
          desc = L["NaughtyWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DG.db.profile.weight.naughty
          end,
          set = function(key, value)
            DG.db.profile.weight.naughty = value
          end,
          disabled = function()
            return (DG.db.profile.doNaughty == false)
          end,
        },
        darkWeight = {
          order = 12,
          type = "range",
          name = L["DarkWeight"],
          desc = L["DarkWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DG.db.profile.weight.dark
          end,
          set = function(key, value)
            DG.db.profile.weight.dark = value
          end,
          disabled = function()
            return (DG.db.profile.doDark == false)
          end,
        },
      },
    },
    custom = {
      order = 2,
      type = "group",
      name = L["CustomGratzSettings"],
      cmdInline = true,
      args = {
        separator4 = {
          order = 1,
          type = "header",
          name = L["AddCustomGratz"],
        },
        addCustomGratz = {
          order = 2,
          type = "input",
          width = "full",
          name = L["AddCustomGratz"],
          desc = L["AddCustomGratzDesc"],
          get = function()
            return
          end,
          set = function(key, value)
            print("Value: " .. value)
            DG.db.profile.customGratz[value] = value
            DadGratz:UpdateProfile()
          end,
        },
        separator5 = {
          order = 3,
          type = "header",
          name = L["ListCustomGratz"],
        },
        listCustomGratz = {
          order = 4,
          type = "select",
          width = "full",
          confirm = true,
          name = L["DelCustomGratz"],
          desc = L["DelCustomGratzDesc"],
          style = "radio",
          get = function()
          end,
          set = function(key, value)
            print("Delete: " .. value .. " - CONFIRMED")
            DG.db.profile.customGratz[value] = nil
            DadGratz:UpdateProfile()
          end,
          values = function()
            return DG.db.profile.customGratz
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
    
    if DG.db.profile.doNaughty == true then
      tooltip:AddLine(L["NaughtyGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["NaughtyGratzDisabled"] .. ".")
    end
    if DG.db.profile.doDark == true then
      tooltip:AddLine(L["DarkGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["DarkGratzDisabled"] .. ".")
    end
    if DG.db.profile.doCustom == true then
      tooltip:AddLine(L["CustomGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["CustomGratzDisabled"] .. ".")
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(DadGratz:Colorize(L["RightClick"] .. " ", "eda55f") .. L["RightClickToolTip"])
  end,
})

--[[FUNCTIONS]]
function DadGratz:OnInitialize()
  DG.db = LibStub("AceDB-3.0"):New("DadGratzSV", DadGratz.dbDefaults, "Default")
  DG.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  DG.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  DG.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")
  
  DadGratz.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(DG.db)
  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, DadGratz.options, nil)
  
  if DG.db.profile.testMode == true then
    DadGratz:RegisterEvent("CHAT_MSG_GUILD")
  end

  DadGratz:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT")
  
  DadGratz:MiniMapIcon()
  
  if DG.db.profile.testMode == true then
    print(L["AddonName"] .. ": " .. L["TestModeEnabled"])
  end
  DG.db.global.cheevoCount = 0
end

function DadGratz:MiniMapIcon()
  DGIcon = LibStub("LibDBIcon-1.0")
  if not DGIcon:IsRegistered(me .. "_mapIcon") then
    DGIcon:Register(me .. "_mapIcon", DGLDB, DG.db.profile.mmIcon)
  end
end

function DadGratz:OnEnable()
  local DGDialog = LibStub("AceConfigDialog-3.0")
  DGOptionFrames = {}
  DGOptionFrames.general = DGDialog:AddToBlizOptions(L["AddonName"], nil, nil, "general")
  DGOptionFrames.custom = DGDialog:AddToBlizOptions(L["AddonName"], L["CustomGratz"], L["AddonName"], "custom")
  DGOptionFrames.profile = DGDialog:AddToBlizOptions(L["AddonName"], L["Profiles"], L["AddonName"], "profile")
end

-- Config window --
function DadGratz:ShowConfig()
	InterfaceOptionsFrame_OpenToCategory(DGOptionFrames.profile)
	InterfaceOptionsFrame_OpenToCategory(DGOptionFrames.general)
end
-- End Options --

function DadGratz:UpdateOptions()
  LibStub("AceConfigRegistry-3.0"):NotifyChange(me)
end

function DadGratz:UpdateProfile()
  DadGratz:ScheduleTimer("UpdateProfileDelayed", 0)
end

function DadGratz:OnProfileChanged(event, database, newProfileKey)
  DG.db.profile = database.profile
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
  print("")
  print("======================")
  print(L["GuildMessageReceived"])
  print(L["TestModeEnabled"] .. ", " .. L["triggering"] .. " ...")
  DadGratz:TriggeredEvent(MSG,Auth,"GUILD")
  DG.db.global.lastRun = time()
end

function DadGratz:CHAT_MSG_GUILD_ACHIEVEMENT(_,MSG,Auth)
  DadGratz:TriggeredEvent(MSG,Auth,"GUILD")
  DG.db.global.lastRun = time()
end

function DadGratz:TriggeredEvent(message, recipient, channel)
  DG.db.global.cheevoCount = DG.db.global.cheevoCount + 1

  if DG.db.profile.testMode == true then
    print("DadGratz:TriggeredEvent")
    print("Cheevo Count: " .. DG.db.global.cheevoCount)
  end

  if DG.db.global.cheevoCount < 2 then
    DadGratz:ScheduleTimer("Process", 5, message, recipient, channel)
  end
end

function DadGratz:Process(message, recipient, channel)
  if DG.db.profile.testMode == true then
    print("DadGratz:Process")
  end
  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  if UnitName("player") == guildy then
    print(L["AddonName"] .. ": " .. L["MyAchievement"])
    if DG.db.profile.testMode == true then
      local delay = math.random(1, 10)
      print("Delay: " .. delay)
      DadGratz:ScheduleTimer("pickGratz", delay, guildy)
    end
  else
    if DG.db.global.cheevoCount > 3 then
      guildy = L["everyone"]
    end

    local delay = math.random(1, 10)
    if DG.db.profile.testMode == true then
      print("Delay: " .. delay)
    end
    DadGratz:ScheduleTimer("pickGratz", delay, guildy)
  end
  DG.db.global.cheevoCount = 0
end

function DadGratz:pickGratz(guildy)
  if DG.db.profile.testMode == true then
    print("DadGratz:pickGratz")
  end

  local gratzType = {
    "Dad",
    "Nice",
  }
  if DG.db.profile.weight.dad == 0 then
    table.insert(gratzType, "Dad")
  elseif DG.db.profile.weight.dad == 1 then
    table.insert(gratzType, "Dad")
    table.insert(gratzType, "Dad")
  end
  
  if DG.db.profile.weight.nice == 0 then
    table.insert(gratzType, "Nice")
  elseif DG.db.profile.weight.nice == 1 then
    table.insert(gratzType, "Nice")
    table.insert(gratzType, "Nice")
  end
  
  if DG.db.profile.doCustom == true then
    table.insert(gratzType, "Custom")
    if DG.db.profile.weight.custom == 0 then
      table.insert(gratzType, "Custom")
    elseif DG.db.profile.weight.dad == 1 then
      table.insert(gratzType, "Custom")
      table.insert(gratzType, "Custom")
    end
  end

  if DG.db.profile.doNaughty == true then
    table.insert(gratzType, "Naughty")
    if DG.db.profile.weight.naughty == 0 then
      table.insert(gratzType, "Naughty")
    elseif DG.db.profile.weight.dad == 1 then
      table.insert(gratzType, "Naughty")
      table.insert(gratzType, "Naughty")
    end
  end

  if DG.db.profile.doDark == true then
    table.insert(gratzType, "Dark")
    if DG.db.profile.weight.custom == 0 then
      table.insert(gratzType, "Dark")
    elseif DG.db.profile.weight.dad == 1 then
      table.insert(gratzType, "Dark")
      table.insert(gratzType, "Dark")
    end
  end
  
  if DG.db.profile.testMode == true then
    for k, v in pairs(gratzType) do
      print(k .. ": " .. v)
    end
  end
  
  local typeN = DadGratz:TableLength(gratzType)
  local typePick = math.random(1, typeN)
  if DG.db.profile.testMode == true then
    print("Pick: " .. typePick)
  end
  local gratzTable = "gratz" .. gratzType[typePick]
  
  if DG.db.profile.testMode == true then
    print("")
    print("======================")
    print("GratzTable: " .. gratzTable)
  end
  
  if gratzTable == "gratzCustom" then
    local gratzSize = DadGratz:TableLength(DG.db.profile.customGratz)
    if DG.db.profile.testMode == true then
      print("GratzSize: " .. gratzSize)
    end
    local gratzRand = math.random(1, gratzSize)
    if DG.db.profile.testMode == true then
      print("GratzRand: " .. gratzRand)
    end
    gratz = DadGratz:FindGratz(DG.db.profile.customGratz, gratzRand)
    if DG.db.profile.testMode == true then
      print("Gratz:")
      print(string.format(gratz, guildy))
    end
  else
    local gratzSize = DadGratz:TableLength(L[gratzTable])
    if DG.db.profile.testMode == true then
      print("GratzSize: " .. gratzSize)
    end
    local gratzRand = math.random(1, gratzSize)
    if DG.db.profile.testMode == true then
      print("GratzRand: " .. gratzRand)
    end
    gratz = DadGratz:FindGratz(L[gratzTable], gratzRand)
    if DG.db.profile.testMode == true then
      print("Gratz:")
      print(string.format(gratz, guildy))
    end
  end
  
  if DG.db.profile.testMode == false then
    DadGratz:SendMessage(string.format(gratz, guildy), guildy, "GUILD")
  end

  if DG.db.profile.testMode == true then
    print("======================")
    print("")
  end
end

function DadGratz:LastRunCheck()
	local Current = time()
	local Past = (DG.db.global.lastRun + DG.db.global.lockOutTime)
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