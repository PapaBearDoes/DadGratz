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
local DG = select(2, ...)
local DG = LibStub("AceAddon-3.0"):NewAddon(DG, "DadGratz", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")
local DadGratzOpts = DG:NewModule("DadGratzOpts", "AceConsole-3.0")
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
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
  else
    print("DadGratz is now disabled")
    self.db.global.AddonEnabled = false
  end
end

function DadGratzOpts:GetGratzNaughty(info)
  return self.db.global.GratzNaughty
end

function DadGratzOpts:SetEnableNaughty(info)
  if DadGratzOpts:GetGratzNaughty(info) == false then
    print("Naughty Gratz are now enabled")
		self.db.global.GratzNaughty = true
  else
    print("Naughty Gratz are now disabled")
    self.db.global.GratzNaughty = false
  end
end

function DadGratzOpts:GetGratzDark(info)
  return self.db.global.GratzDark
end

function DadGratzOpts:SetEnableDark(info)
  if DadGratzOpts:GetGratzDark(info) == false then
    print("Dark Gratz are now enabled")
		self.db.global.GratzDark = true
  else
    print("Dark Gratz are now disabled")
    self.db.global.GratzDark = false
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
      name = 'Enable/Disable Addon',
      desc = '/dg enable',
      set = 'SetEnableAddon',
      get = 'GetAddonEnabled',
    },
    --Naughty
    naughty = {
      type = 'toggle',
      name = 'Enable/Disable Naughty Gratz',
      desc = '/dg naughty',
      set = 'SetEnableNaughty',
      get = 'GetGratzNaughty',
    },
    --Dark
    dark = {
      type = 'toggle',
      name = 'Enable/Disable Dark Humor Gratz',
      desc = '/dg dark',
      set = 'SetEnableDark',
      get = 'GetGratzDark',
    },
  },
}

LibStub("AceConfig-3.0"):RegisterOptionsTable("DadGratz", options, {"dg"})

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