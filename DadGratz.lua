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
DG_dbDefaults = {
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
        jokesDad = {
          order = 22,
          name = L["jokesDad"],
          desc = L["jokesDadDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesDad
          end,
          set = function (key, value)
            addon.db.profile.jokesDad = value
          end,
        },
        jokesPuns = {
          order = 22,
          name = L["jokesPuns"],
          desc = L["jokesPunsDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesPuns
          end,
          set = function (key, value)
            addon.db.profile.jokesPuns = value
          end,
        },
        --[[jokesQuestionable = {
          order = 23,
          name = L["jokesQuestionable"],
          desc = L["jokesQuestionableDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesQuestionable
          end,
          set = function (key, value)
            addon.db.profile.jokesQuestionable = value
          end,
        },]]--
        jokesDark = {
          order = 24,
          name = L["jokesDark"],
          desc = L["jokesDarkDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesDark
          end,
          set = function (key, value)
            addon.db.profile.jokesDark = value
          end,
        },
        --[[jokesNSFW = {
          order = 25,
          name = L["jokesNSFW"],
          desc = L["jokesNSFWDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokeNSFW
          end,
          set = function (key, value)
            addon.db.profile.jokeNSFW = value
          end,
        },]]--
        --[[jokesUser = {
          order = 26,
          name = L["jokesUser"],
          desc = L["jokesUserDesc"],
          type = "toggle",
          get = function()
            return addon.db.profile.jokesUser
          end,
          set = function (key, value)
            addon.db.profile.jokesUser = value
          end,
        },]]--
        guildMemberName = {
          order = 27,
          name = L["GuildMemberName"],
          desc = L["GuildMemberNameDesc"],
          type = "input",
          width = "full",
          get = function()
            return addon.db.profile.guildMemberName
          end,
          set = function(key, value)
            addon.db.profile.guildMemberName = value
          end,
        },
        -- Respond to slash command?
        delaysHeader = {
          order = 30,
          name = L["delayHeader"],
          type = "header",
        },
        responseDelayMin = {
          order = 31,
          name = L["delayMin"],
          desc = L["delayDesc"],
          type = "range",
          min = 10,
          max = 180,
          step = 1,
          get = function()
            return addon.db.profile.responseDelayMin
          end,
          set = function (key, value)
            addon.db.profile.responseDelayMin = value
          end,
        },
        responseDelayMax = {
          order = 32,
          name = L["delayMax"],
          desc = L["delayDesc"],
          type = "range",
          min = 10,
          max = 180,
          step = 1,
          get = function()
            return addon.db.profile.responseDelayMax
          end,
          set = function (key, value)
            addon.db.profile.responseDelayMax = value
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
            jokesSafeList = {
              order = 2,
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                local jokes = ""
                for i, v in ipairs(DG_globals.jokesSafe) do
                  local joke = v .. "\n\n"
                  jokes = jokes .. joke
                end
                return jokes
              end,
            },
          },
        },
        dadJokes = {
          order = 2,
          name = L["Dad"],
          type = "group",
          args = {
            headerDad = {
              order = 1,
              name = L["DadJokes"],
              type = "header",
              width = "full",
            },
            jokesDadList = {
              order = 2,
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                local jokes = ""
                for i, v in ipairs(DG_globals.jokesDad) do
                  local joke = v .. "\n\n"
                  jokes = jokes .. joke
                end
                return jokes
              end,
            },
          },
        },
        punsJokes = {
          order = 2,
          name = L["Puns"],
          type = "group",
          args = {
            headerPuns = {
              order = 1,
              name = L["Puns"],
              type = "header",
              width = "full",
            },
            jokesPunsList = {
              order = 2,
              type = "description",
              width = "full",
              fontSize = "medium",
              name = function()
                local jokes = ""
                for i, v in ipairs(DG_globals.jokesPuns) do
                  local joke = v .. "\n\n"
                  jokes = jokes .. joke
                end
                return jokes
              end,
            },
          },
        },
        --[[questionableJokes = {
          order = 3,
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
                local jokes = ""
                if not next(DG_globals["jokesQuestionable"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DG_globals.jokesQuestionable) do
                    local joke = v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
            },
          },
        },]]--
        darkJokes = {
          order = 4,
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
                local jokes = ""
                if not next(DG_globals["jokesDark"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DG_globals.jokesDark) do
                    local joke = v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
            },
          },
        },
        --[[NSFWJokes = {
          order = 5,
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
                local jokes = ""
                if not next(DG_globals["jokesNSFW"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DG_globals.jokesNSFW) do
                    local joke = v .. "\n\n"
                    jokes = jokes .. joke
                  end
                  return jokes
                end
              end,
            },
          },
        },]]--
        --[[UserJokes = {
          order = 6,
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
                local jokes = ""
                if not next(addon.db.profile["myJokes"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(addon.db.profile.myJokes) do
                    local joke = v .. "\n\n"
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
              set = function(info, value)
                n = getn(addon.db.profile["myJokes"])
                n = n + 1
                addon.db.profile["myJokes"][n] = value
              end,
            },
          },
        },]]--
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
