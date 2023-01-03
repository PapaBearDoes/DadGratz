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
DadGratz.globals = {
  lockOutTime = 5,
  cheevoCount = 0,
}

-- Create any required hidden frames
--DadGratz.frame = CreateFrame("GameTooltip")
--DadGratz.frame:SetOwner(WorldFrame, "ANCHOR_NONE")

-- Create DB defaults
DadGratz.dbDefaults = {
  global = {
  },
  profile = {
    testMode = false,
    addonEnable = true,
    gratzNaughty = true,
    gratzDark = true,
    mmIcon = {
      hide = false,
      minimapPos = 205,
    },
  },
}
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