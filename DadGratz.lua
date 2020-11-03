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
local addon = LibStub("LibInit"):NewAddon(ns, me, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
-- Define Globals
DG_globals = {
  enableTasks = {},
}

-- Create any required hidden frames

-- Create DB defaults
DG_dbDefaults = {
  profile = {
    modules = {
      ["*"] = 3
    }
  }
}

--Create config defaults
DG_options = {
  name = me,
  desc = "",
  type = "group",
  childGroups = "tab"
  args = {
    genTab = {
      order = 1,
      name = L["GeneralSettings"],
      type = "group",
      args = {
        order = 1,
        name = "",
        type = "group",
        args = {
          
        },
      },
    },
  },
}

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
