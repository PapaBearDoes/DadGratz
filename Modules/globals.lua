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
local DadGratz = ns
--local DadGratz = LibStub("LibInit"):NewAddon(ns, me, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
-- Define Globals
DadGratz.globals = {
  enableTasks = {},
  jokesSafe = {},
  jokesDad = {},
  jokesPuns = {},
  jokesQuestionable = {},
  jokesDark = {},
  jokesNSFW = {},
  numGuildMembers = {},
  guild = {
    member = {},
    cache = {},
  },
}

-- Create any required hidden frames

-- Create DB defaults
DadGratz.dbDefaults = {
  profile = {
    autoRespond = true,
    guildAchievement = true,
    maxLevel = true,
    levelUp = false,
    levelUpSlider = 45,
    responseDelayMin = 5,
    responseDelayMax = 25,
    mySlashCommand = "dgratz",
    jokesSafe = true,
    jokesDad = true,
    jokesPuns = true,
    jokesQuestionable = false,
    jokesDark = false,
    jokesNSFW = false,
    jokesUser = false,
    guildMemberName = "Guild Mate",
    myJokes = {},
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
