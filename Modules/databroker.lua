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
--Durrr = select(2, ...)
local me, ns = ...
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
DadGratz_LDB = LibStub("LibDataBroker-1.1")
DGLDB = DadGratz_LDB:NewDataObject("DadGratzLDB", {
  type = "data source",
  label = L["AddonName"],
  text = "",
  icon = "Interface\\MerchantFrame\\Achievement_guildperk_bartering",
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
      tooltip:AddLine(L["NaughtyGratz"] .. " are " .. L["enabled"] .. ".")
    else
      tooltip:AddLine(L["NaughtyGratz"] .. " are " .. L["disabled"] .. ".")
    end
    if DadGratz.db.profile.doDark == true then
      tooltip:AddLine(L["DarkGratz"] .. " are " .. L["enabled"] .. ".")
    else
      tooltip:AddLine(L["DarkGratz"] .. " are " .. L["disabled"] .. ".")
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(DadGratz:Colorize(L["RightClick"] .. " ", "eda55f") .. L["RightToolTip"])
  end,
})
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