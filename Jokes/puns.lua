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
--local addon = LibStub("LibInit"):NewAddon(ns, me, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
DG_globals.jokesPuns = {
  "Achievements are the key to Azeroth's soul, %s, and you have enriched it so with that one :)",
  "In all the lands of Azeroth, %s, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to you it was excellent!",
  "If Illidan saw that he'd HAVE to admit that %s WAS prepared!",
  "By Azeroth, %s! you really rocked that achievement!!",
  "Not even Deathwing would argue that achievement, %s! Congrats!",
  "The wisps of Moonglade chanted '%s!' as they got THAT achievement!",
  "All the critters in the area are celebrating that achievement, %s, as are we!",
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
