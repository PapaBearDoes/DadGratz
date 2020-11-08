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
    jokesSafe = true,
    jokesQuestionable = true,
    jokesDark = true,
    jokesNSFW = true,
    jokesUser = false,
    userJokes = {},
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
        jokesSafe = {
          order = 21,
          name = L["jokesSafe"],
          desc = L["jokesSafeDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesSafe
          end,
          set = function (key, value)
            addon.db.profile.jokesSafe = value
          end,
        },
        jokesQuestionable = {
          order = 22,
          name = L["jokesQuestionable"],
          desc = L["jokesQuestionableDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesQuestionable
          end,
          set = function (key, value)
            addon.db.profile.jokesQuestionable = value
          end,
        },
        jokesDark = {
          order = 23,
          name = L["jokesDark"],
          desc = L["jokesDarkDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeDark
          end,
          set = function (key, value)
            addon.db.profile.jokeDark = value
          end,
        },
        jokesNSFW = {
          order = 24,
          name = L["jokesNSFW"],
          desc = L["jokesNSFWDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeNSFW
          end,
          set = function (key, value)
            addon.db.profile.jokeNSFW = value
          end,
        },
        jokesUser = {
          order = 25,
          name = L["jokesUser"],
          desc = L["jokesUserDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeUser
          end,
          set = function (key, value)
            addon.db.profile.jokeUser = value
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
          desc = L["SafeSelectDesc"],
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
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                if not DG_globals.jokesSafe then
                  local jokes = "empty"
                  return jokes
                else
                  local jokes = ""
                  for i, v in pairs(DG_globals.jokesSafe) do
                    local joke = i .. ": " .. v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
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
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                if not DG_globals.jokesQuestionable then
                  local jokes = "empty"
                  return jokes
                else
                  local jokes = ""
                  for i, v in pairs(DG_globals.jokesQuestionable) do
                    local joke = i .. ": " .. v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
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
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                if not DG_globals.jokesDark then
                  local jokes = "empty"
                  return jokes
                else
                  local jokes = ""
                  for i, v in pairs(DG_globals.jokesDark) do
                    local joke = i .. ": " .. v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
            },
          },
        },
        NSFWJokes = {
          order = 4,
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
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                if not DG_globals.jokesNSFW then
                  local jokes = "empty"
                  return jokes
                else
                  local jokes = ""
                  for i, v in pairs(DG_globals.jokesNSFW) do
                    local joke = i .. ": " .. v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
            },
          },
        },
        UserJokes = {
          order = 5,
          name = L["Mine"],
          type = "group",
          args = {
            headerUser = {
              order = 1,
              name = L["MyJokes"],
              type = "header",
              width = "full",
            },
            userJokes = {
              order = 2,
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                if not addon.db.profile.userJokes then
                  local jokes = "empty"
                  return jokes
                else
                  local jokes = ""
                  for i, v in pairs(addon.db.profile.userJokes) do
                    local joke = i .. ": " .. v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
            },
            headerUser2 = {
              order = 3,
              name = L["AddNewUserJoke"],
              type = "header",
              width = "full",
            },
            userJokesAdd = {
              order = 4,
              name = L["userJokesAdd"],
              desc = L["userJokesAddDesc"],
              type = "input",
              width = "full",
              set = function(value)
                local n = 0
                if not addon.db.profile.userJokes then
                  n = 1
                else
                  for _ in pairs(addon.db.profile.userJokes) do
                    n = n + 1
                  end
                  n = n + 1
                end
                addon:Print(n .. "\n\n")
                addon.db.profile.userJokes[n] = value
              end,
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
