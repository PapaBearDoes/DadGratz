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
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
DadGratz.options = {
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
            return DadGratz.db.profile.autoRespond
          end,
          set = function (key, value)
            DadGratz.db.profile.autoRespond = value
            if not DadGratz.db.profile.autoRespond then
              DadGratz.db.profile.guildAchievement = false
              DadGratz.db.profile.maxLevel = false
              DadGratz.db.profile.levelUp = false
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
            return DadGratz.db.profile.guildAchievement
          end,
          set = function (key, value)
            DadGratz.db.profile.guildAchievement = value
          end,
          disabled = function()
            return (DadGratz.db.profile.autoRespond == false)
          end,
        },
        maxLevel = {
          order = 13,
          name = L["MaxLevel"],
          desc = L["MaxLevelDesc"],
          type = "toggle",
          width = "full",
          get = function ()
            return DadGratz.db.profile.maxLevel
          end,
          set = function (key, value)
            DadGratz.db.profile.maxLevel = value
          end,
          disabled = function()
            return (DadGratz.db.profile.autoRespond == false)
          end,
        },
        levelUp = {
          order = 14,
          name = L["LevelUp"],
          desc = L["LevelUpDesc"],
          type = "toggle",
          width = "full",
          get = function ()
            return DadGratz.db.profile.levelUp
          end,
          set = function (key, value)
            DadGratz.db.profile.levelUp = value
          end,
          disabled = function()
            return (DadGratz.db.profile.autoRespond == false)
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
            return DadGratz.db.profile.levelUpSlider
          end,
          set = function (key, value)
            DadGratz.db.profile.levelUpSlider = value
          end,
          disabled = function()
            return (DadGratz.db.profile.levelUp == false)
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
            return DadGratz.db.profile.jokesSafe
          end,
          set = function (key, value)
            DadGratz.db.profile.jokesSafe = value
          end,
        },
        jokesDad = {
          order = 22,
          name = L["jokesDad"],
          desc = L["jokesDadDesc"],
          type = "toggle",
          get = function()
            return DadGratz.db.profile.jokesDad
          end,
          set = function (key, value)
            DadGratz.db.profile.jokesDad = value
          end,
        },
        jokesPuns = {
          order = 22,
          name = L["jokesPuns"],
          desc = L["jokesPunsDesc"],
          type = "toggle",
          get = function()
            return DadGratz.db.profile.jokesPuns
          end,
          set = function (key, value)
            DadGratz.db.profile.jokesPuns = value
          end,
        },
        --[[jokesQuestionable = {
          order = 23,
          name = L["jokesQuestionable"],
          desc = L["jokesQuestionableDesc"],
          type = "toggle",
          get = function()
            return DadGratz.db.profile.jokesQuestionable
          end,
          set = function (key, value)
            DadGratz.db.profile.jokesQuestionable = value
          end,
        },]]--
        jokesDark = {
          order = 24,
          name = L["jokesDark"],
          desc = L["jokesDarkDesc"],
          type = "toggle",
          get = function()
            return DadGratz.db.profile.jokesDark
          end,
          set = function (key, value)
            DadGratz.db.profile.jokesDark = value
          end,
        },
        --[[jokesNSFW = {
          order = 25,
          name = L["jokesNSFW"],
          desc = L["jokesNSFWDesc"],
          type = "toggle",
          get = function()
            return DadGratz.db.profile.jokeNSFW
          end,
          set = function (key, value)
            DadGratz.db.profile.jokeNSFW = value
          end,
        },]]--
        --[[jokesUser = {
          order = 26,
          name = L["jokesUser"],
          desc = L["jokesUserDesc"],
          type = "toggle",
          get = function()
            return DadGratz.db.profile.jokesUser
          end,
          set = function (key, value)
            DadGratz.db.profile.jokesUser = value
          end,
        },]]--
        guildMemberName = {
          order = 27,
          name = L["GuildMemberName"],
          desc = L["GuildMemberNameDesc"],
          type = "input",
          width = "full",
          get = function()
            return DadGratz.db.profile.guildMemberName
          end,
          set = function(key, value)
            DadGratz.db.profile.guildMemberName = value
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
            return DadGratz.db.profile.responseDelayMin
          end,
          set = function (key, value)
            DadGratz.db.profile.responseDelayMin = value
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
            return DadGratz.db.profile.responseDelayMax
          end,
          set = function (key, value)
            DadGratz.db.profile.responseDelayMax = value
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
            return DadGratz.db.profile.mySlashCommand
          end,
          set = function(key, value)
            DadGratz.db.profile.mySlashCommand = value
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
                for i, v in ipairs(DadGratz.globals.jokesSafe) do
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
                for i, v in ipairs(DadGratz.globals.jokesDad) do
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
                for i, v in ipairs(DadGratz.globals.jokesPuns) do
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
                if not next(DadGratz.globals["jokesQuestionable"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DadGratz.globals.jokesQuestionable) do
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
                if not next(DadGratz.globals["jokesDark"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DadGratz.globals.jokesDark) do
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
                if not next(DadGratz.globals["jokesNSFW"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DadGratz.globals.jokesNSFW) do
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
                if not next(DadGratz.db.profile["myJokes"]) then
                  jokes = "empty"
                  return jokes
                else
                  for i, v in ipairs(DadGratz.db.profile.myJokes) do
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
                n = getn(DadGratz.db.profile["myJokes"])
                n = n + 1
                DadGratz.db.profile["myJokes"][n] = value
              end,
            },
          },
        },]]--
      },
    },
  },
}

tinsert(DadGratz.globals.enableTasks, function(self)
  DadGratz.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(DadGratz.db)
  DadGratz.options.args.profile.order = -2

  DadGratz:RegisterChatCommand(DadGratz.db.profile.mySlashCommand, "slashCommand")

  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, DadGratz.options, nil)

  local DadGratz_Dialog = LibStub("AceConfigDialog-3.0")
  DadGratz_optionFrames = {}
  DadGratz_optionFrames.general = DadGratz_Dialog:AddToBlizOptions(me, nil, nil, "general")
  DadGratz_optionFrames.jokes = DadGratz_Dialog:AddToBlizOptions(me, L["Jokes"], me, "jokes")
  DadGratz_optionFrames.profile = DadGratz_Dialog:AddToBlizOptions(me, L["Profiles"], me, "profile")
end)

-- Config window --
function DadGratz:ShowConfig()
	InterfaceOptionsFrame_OpenToCategory(DadGratz_optionFrames.profile)
  InterfaceOptionsFrame_OpenToCategory(DadGratz_optionFrames.jokes)
	InterfaceOptionsFrame_OpenToCategory(DadGratz_optionFrames.general)
end
-- End Options --

function DadGratz:UpdateOptions()
  LibStub("AceConfigRegistry-3.0"):NotifyChange(me)
end
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
