local DadGratz = select(2, ...)
local DadGratz = LibStub("AceAddon-3.0"):NewAddon(DadGratz, "DadGratz", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")
--local L = LibStub("AceLocale-3.0"):NewLocale("DadGratz", "enUS", true)

local Opts = DadGratz:NewModule("Opts", "AceConsole-3.0")

function Opts:OnInitialize()
  self.db = LibStub("AceDB-3.0"):New("DadGratz")
end

function Opts:SetTrigger(info, input)
  self.db.global.Trigger = input
  print("Set trigger to ", input)
end

function Opts:SetEnableAddon(info)
  if Opts:self.db.global.AddonEnabled(info) == false then
    print("DadGratz is now enabled")
		self.db.global.AddonEnabled = true
  else print("DadGratz is now disabled")
    self.db.global.AddonEnabled = false
  end
end

function Opts:GetAddonEnabled(info)
  return self.db.global.AddonEnabled
end

function Opts:SetRaidIcon(info, input)
  if Opts:GetRaidIcon(info) == false then
    print("Raid icon will now be used")
    self.db.global.UseRaidIcon = true
  else print("Raid icon is now disabled")
    self.db.global.UseRaidIcon = false
  end
end

function Opts:SetChannel(info, input)
  input = strupper(input)
  if (input == 'GUILD' or input == 'OFFICER' or input == 'WHISPER' or input == 'PARTY') then
    self.db.global.Channel = input
    print("Set reply for messages to ", input)
  else
    print("Incorrect channel name. Message reply channel was not changed.")
  end
end

local options = {
  name = "DadGratz",
  handler = Opts,
  type = 'group',
  args = {
    --trigger
    trigger = {
      type = 'input',
      name = 'Trigger',
      desc = '/dg trigger triggerkey',
      set = 'SetTrigger',
    },
    --AddonEnabled
    enable = {
      type = 'toggle',
      name = 'Enable Addon',
      desc = '/dg enable',
      set = 'SetEnableAddon',
      get = 'GetAddonEnabled',
    },
    --AddonDisabled
    disable = {
      type = 'toggle',
      name = 'Disable Addon',
      desc = '/dg disable',
      set = 'SetDisableAddon',
      get = 'GetAddonEnabled',
    },
    --Channel
    channel = {
      type = 'input',
      name = 'Channel to reply for guild messages',
      desc = '/dg channel *CHANNEL*',
      set = 'SetChannel',
    },
  },
}

LibStub("AceConfig-3.0"):RegisterOptionsTable("DadGratz", options, {"/dg"})
