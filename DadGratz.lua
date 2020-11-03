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
  childGroups = "tab",
  args = {
    genTab = {
      order = 1,
      name = L["GeneralSettings"],
      type = "group",
      args = {
        -- Automatic or not, Which Jokes to have in the pool, What triggers a gratz, macro creation, respond to slash command?
      },
    },
    jokesTab = {
      order = 2,
      name = L["Jokes"],
      type = "group",
      childGroups = "tab"
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
            jokesSafe = {
              order = 2,
              name = --[[SafeJokesDB]],
              type = "description",
              width = "full",
            },
            headerSafe2 = {
              order = 3,
              name = L["AddNewSafeJoke"],
              type = "header",
              width = "full",
            },
            inputSafe = {
              order = 4,
              name = L["AddNewSafeJokeInput"],
              type = "input",
              width = .75,
            },
            buttonSafe = {
              order = 5,
              name = L["AddNewSafeJokeButton"],
              type = "execute",
              func = --function call,
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
            jokesQuestionable = {
              order = 2,
              name = --[[QuestionableJokesDB]],
              type = "description",
              width = "full",
            },
            headerQuestionable2 = {
              order = 3,
              name = L["AddNewQuestionableJoke"],
              type = "header",
              width = "full",
            },
            inputQuestionable = {
              order = 4,
              name = L["AddNewQuestionableJokeInput"],
              type = "input",
              width = .75,
            },
            buttonQuestionable = {
              order = 5,
              name = L["AddNewQuestionableJokeButton"],
              type = "execute",
              func = --function call,
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
            jokesDark = {
              order = 2,
              name = --[[DarkJokesDB]],
              type = "description",
              width = "full",
            },
            headerDark2 = {
              order = 3,
              name = L["AddNewDarkJoke"],
              type = "header",
              width = "full",
            },
            inputDark = {
              order = 4,
              name = L["AddNewDarkJokeInput"],
              type = "input",
              width = .75,
            },
            buttonDark = {
              order = 5,
              name = L["AddNewDarkJokeButton"],
              type = "execute",
              func = --function call,
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
            jokesNSFW = {
              order = 2,
              name = --[[NSFWJokesDB]],
              type = "description",
              width = "full",
            },
            headerNSFW2 = {
              order = 3,
              name = L["AddNewNSFWJoke"],
              type = "header",
              width = "full",
            },
            inputNSFW = {
              order = 4,
              name = L["AddNewNSFWJokeInput"],
              type = "input",
              width = .75,
            },
            buttonNSFW = {
              order = 5,
              name = L["AddNewNSFWJokeButton"],
              type = "execute",
              func = --function call,
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
