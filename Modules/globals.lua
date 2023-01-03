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
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
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
    addonEnable = true,
    doNaughty = true,
    doDark = true,
    mmIcon = {
      hide = false,
      minimapPos = 205,
    },
  },
}

-- Create any required hidden frames
DadGratz.frame = CreateFrame("GameTooltip")
DadGratz.frame:SetOwner(WorldFrame, "ANCHOR_NONE")
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