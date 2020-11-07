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
  jokesSafe = {},
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
DG_dbDefaults = {
  profile = {
    autoRespond = true,
    guildAchievement = true,
    maxLevel = true,
    levelUp = false,
    levelUpSlider = 45,
    responseDelay = 15,
    mySlashCommand = "dgratz",
    jokesUser = {},
  },
}

--Create config defaults
DG_options = {
  name = me,
  desc = "",
  type = "group",
  childGroups = "tab",
  args = {
    general = {
      order = 1,
      name = L["GeneralSettings"],
      type = "group",
      args = {
        -- Display Options
        displayOptionsHeader = {
          order = 1,
          name = L["DisplayOptionsHeader"],
          type = "header",
        },
        -- Automatic or not
        autoRespondHeader = {
          order = 10,
          name = L["AutoRespondHeader"],
          type = "header",
        },
        autoRespond = {
          order = 11,
          name = L["AutoRespond"],
          desc = L["AutoRespondDesc"],
          type = "toggle",
          width = "full",
          get = function()
            return addon.db.profile.autoRespond
          end,
          set = function (key, value)
            addon.db.profile.autoRespond = value
            if not addon.db.profile.autoRespond then
              addon.db.profile.guildAchievement = false
              addon.db.profile.maxLevel = false
              addon.db.profile.levelUp = false
            end
          end,
        },
        -- What triggers a gratz
        guildAchievement = {
          order = 12,
          name = L["GuildAchievement"],
          desc = L["GuildAchievementDesc"],
          type = "toggle",
          width = "full",
          get = function ()
            return addon.db.profile.guildAchievement
          end,
          set = function (key, value)
            addon.db.profile.guildAchievement = value
          end,
          disabled = function()
            return (addon.db.profile.autoRespond == false)
          end,
        },
        maxLevel = {
          order = 13,
          name = L["MaxLevel"],
          desc = L["MaxLevelDesc"],
          type = "toggle",
          width = "full",
          get = function ()
            return addon.db.profile.maxLevel
          end,
          set = function (key, value)
            addon.db.profile.maxLevel = value
          end,
          disabled = function()
            return (addon.db.profile.autoRespond == false)
          end,
        },
        levelUp = {
          order = 14,
          name = L["LevelUp"],
          desc = L["LevelUpDesc"],
          type = "toggle",
          width = "full",
          get = function ()
            return addon.db.profile.levelUp
          end,
          set = function (key, value)
            addon.db.profile.levelUp = value
          end,
          disabled = function()
            return (addon.db.profile.autoRespond == false)
          end,
        },
        levelUpSlider = {
          order = 15,
          name = L["LevelUpSlider"],
          desc = L["LevelUpSliderDesc"],
          type = "range",
          min = 10,
          max = 60,
          step = 1,
          width = "full",
          get = function ()
            return addon.db.profile.levelUpSlider
          end,
          set = function (key, value)
            addon.db.profile.levelUpSlider = value
          end,
          disabled = function()
            return (addon.db.profile.levelUp == false)
          end,
        },
        -- Which Jokes to have in the pool
        jokeTypesHeader = {
          order = 20,
          name = L["JokeTypesHeader"],
          type = "header",
        },
        jokeSafeToggle = {
          order = 21,
          name = L["jokesSafeToggle"],
          desc = L["jokesSafeToggleDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeSafeToggle
          end,
          set = function (key, value)
            addon.db.profile.jokeSafeToggle = value
          end,
        },
        jokeQuestionableSafeToggle = {
          order = 22,
          name = L["jokesQuestionableToggle"],
          desc = L["jokesQuestionableToggleDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeQuestionableToggle
          end,
          set = function (key, value)
            addon.db.profile.jokeQuestionableToggle = value
          end,
        },
        jokeDarkToggle = {
          order = 23,
          name = L["jokesDarkToggle"],
          desc = L["jokesDarkToggleDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeDarkToggle
          end,
          set = function (key, value)
            addon.db.profile.jokeDarkToggle = value
          end,
        },
        jokeNSFWToggle = {
          order = 24,
          name = L["jokesNSFWToggle"],
          desc = L["jokesNSFWToggleDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeNSFWToggle
          end,
          set = function (key, value)
            addon.db.profile.jokeNSFWToggle = value
          end,
        },
        jokeUserToggle = {
          order = 25,
          name = L["jokesUserToggle"],
          desc = L["jokesUserToggleDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeUserToggle
          end,
          set = function (key, value)
            addon.db.profile.jokeUserToggle = value
          end,
        },
        -- Respond to slash command?
        delaysHeader = {
          order = 30,
          name = L["delayHeader"],
          type = "header",
        },
        responseDelay = {
          order = 31,
          name = L["delay"],
          desc = L["delayDesc"],
          type = "range",
          min = 1,
          max = 180,
          step = 1,
          get = function()
            return addon.db.profile.responseDelay
          end,
          set = function (key, value)
            addon.db.profile.responseDelay = value
          end,
        },
        -- Respond to slash command?
        slashCommandHeader = {
          order = 40,
          name = L["SlashCommandHeader"],
          type = "header",
        },
        mySlashCommand = {
          order = 41,
          name = L["MySlashCommand"],
          desc = L["MySlashCommandDesc"],
          type = "input",
          get = function()
            return addon.db.profile.mySlashCommand
          end,
          set = function(key, value)
            addon.db.profile.mySlashCommand = value
          end,
        },
        -- Macro creation
        macroCreateHeader = {
          order = 50,
          name = L["MacroCreateHeader"],
          type = "header",
        },
        --macroCreate = {},
      },
    },
    jokes = {
      order = 2,
      name = L["Jokes"],
      type = "group",
      childGroups = "tab",
      args = {
        safeJokes = {
          order = 1,
          name = L["Safe"],
          type = "group",
          args = {
            headerSafe = {
              order = 1,
              name = L["SafeJokes"],
              type = "header",
              width = "full",
            },
            jokesSafe = {
              order = 2,
              name = ""--[[SafeJokesDB]],
              type = "description",
              width = "full",
            },
          },
        },
        questionableJokes = {
          order = 2,
          name = L["Questionable"],
          type = "group",
          args = {
            headerQuestionable = {
              order = 1,
              name = L["QuestionableJokes"],
              type = "header",
              width = "full",
            },
            jokesQuestionable = {
              order = 2,
              name = ""--[[QuestionableJokesDB]],
              type = "description",
              width = "full",
            },
          },
        },
        darkJokes = {
          order = 3,
          name = L["Dark"],
          type = "group",
          args = {
            headerDark = {
              order = 1,
              name = L["DarkJokes"],
              type = "header",
              width = "full",
            },
            jokesDark = {
              order = 2,
              name = ""--[[DarkJokesDB]],
              type = "description",
              width = "full",
            },
          },
        },
        NSFWJokes = {
          order = 3,
          name = L["NSFW"],
          type = "group",
          args = {
            headerNSFW = {
              order = 1,
              name = L["NSFWJokes"],
              type = "header",
              width = "full",
            },
            jokesNSFW = {
              order = 2,
              name = ""--[[NSFWJokesDB]],
              type = "description",
              width = "full",
            },
          },
        },
        UserJokes = {
          order = 4,
          name = L["Mine"],
          type = "group",
          args = {
            headerUser = {
              order = 1,
              name = L["MyJokes"],
              type = "header",
              width = "full",
            },
            userNSFW = {
              order = 2,
              name = ""--[[UserJokesDB]],
              type = "description",
              width = "full",
            },
            headerUser2 = {
              order = 3,
              name = L["AddNewUserJoke"],
              type = "header",
              width = "full",
            },
            inputUser = {
              order = 4,
              name = L["AddNewUserJokeInput"],
              type = "input",
              width = .75,
            },
            buttonUser = {
              order = 5,
              name = L["AddNewUserJokeButton"],
              type = "execute",
              func = ""--[[function call]],
            },
          },
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
