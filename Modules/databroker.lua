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
-- Do LDB stuff --
local DG_LDB = LibStub("LibDataBroker-1.1")
local DG_LDB = DG_LDB:NewDataObject(me, {
  type = "data source",
  label = L["Addon"],
  text = L["LDB_Text"],
  icon = "Interface\\Icons\\spell_animaardenweald_buff",
  --iconCoords = repairIconCoords,
  OnClick = function(frame, click)
    if click == "RightButton" then
      addon:ShowConfig()
    elseif click == "LeftButton" then
      addon:Print("Gratz Fired, please wait!")
      addon:ScheduleTimer("FireGratz", random(addon.db.profile.responseDelayMin, addon.db.profile.responseDelayMax), addon.db.profile.guildMemberName)
    end
  end,
  OnTooltipShow = function(tooltip)
    if not tooltip or not tooltip.AddLine then
      return
    end

    tooltip:AddLine(L["Addon"] .. " " .. GetAddOnMetadata(me, "Version"))
    tooltip:AddLine(" ")

    tooltip:AddLine(" ")
    tooltip:AddLine(addon:Colorize(L["LeftClick"] .. " ", "eda55f") .. L["LeftToolTip"])
    tooltip:AddLine(addon:Colorize(L["RightClick"] .. " ", "eda55f") .. L["RightToolTip"])
  end,
})
-- End LDB stuff --

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
