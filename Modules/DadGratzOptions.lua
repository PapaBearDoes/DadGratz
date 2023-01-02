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
  else print("DadGratz is now disabled")
    self.db.global.AddonEnabled = false
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