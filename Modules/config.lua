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
tinsert(DG_globals.enableTasks, function(self)
  DG_options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(addon.db)
  DG_options.args.profile.order = -2

  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, DG_options, {"/dadgratz", "/" .. addon.db.profile.mySlashCommand})

  local DG_Dialog = LibStub("AceConfigDialog-3.0")
  DG_optionFrames = {}
  DG_optionFrames.general = DG_Dialog:AddToBlizOptions(me, nil, nil, "general")
  DG_optionFrames.jokes = DG_Dialog:AddToBlizOptions(me, L["Jokes"], me, "jokes")
  DG_optionFrames.profile = DG_Dialog:AddToBlizOptions(me, L["Profiles"], me, "profile")
end)

-- Config window --
function addon:ShowConfig()
	InterfaceOptionsFrame_OpenToCategory(DG_optionFrames.profile)
  InterfaceOptionsFrame_OpenToCategory(DG_optionFrames.jokes)
	InterfaceOptionsFrame_OpenToCategory(DG_optionFrames.general)
end
-- End Options --

function addon:UpdateOptions()
  LibStub("AceConfigRegistry-3.0"):NotifyChange(me)
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
