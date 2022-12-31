local DG = select(2, ...)
local DG = LibStub("AceAddon-3.0"):NewAddon(DG, "DadGratz", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")
local DadGratzOpts = DG:NewModule("DadGratzOpts", "AceConsole-3.0")

function DadGratzOpts:OnInitialize()
  self.db = LibStub("AceDB-3.0"):New("DadGratzDB")
end

function DadGratzOpts:GetAddonEnabled(info)
  return self.db.global.AddonEnabled
end

function DadGratzOpts:SetEnableAddon(info)
  if DadGratzOpts:GetAddonEnabled(info) == false then
    print("DadGratz is now enabled")
		self.db.global.AddonEnabled = true
  else print("DadGratz is now disabled")
    self.db.global.AddonEnabled = false
  end
end

function DadGratzOpts:SetChannel(info, input)
  input = strupper(input)
  if (input == 'GUILD' or input == 'OFFICER' or input == 'WHISPER' or input == 'PARTY') then
    self.db.global.Channel = input
    print("Set reply for messages to ", input)
  else
    print("Incorrect channel name. Message reply channel was not changed.")
  end
end

local options = {
  name = "DadGratzOptions",
  handler = DadGratzOpts,
  type = 'group',
  args = {
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

LibStub("AceConfig-3.0"):RegisterOptionsTable("DadGratz", options, {"dg"})