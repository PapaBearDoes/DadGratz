--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  @file-author@'s Durrrability Addon for World of Warcraft
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local me, ns = ...
local lang = GetLocale()
local l = LibStub("AceLocale-3.0")
local L = l:NewLocale(me, "enUS", true, true)
if not L then return end
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!

--@localization(locale="enUS", format="lua_additive_table")@

--@do-not-package@
L["GeneralSettings"] = "General Settings"
L["Jokes"] = "All Gratz/Jokes"
L["Safe"] = "Safe"
L["SafeSelectDesc"] = "Select the jokes you wish to fire off."
L["SafeJokes"] = "Safe Gratz/Jokes"
L["Questionable"] = "Questionable"
L["QuestionableJokes"] = "Questionable Gratz/Jokes"
L["Dark"] = "Dark"
L["DarkJokes"] = "Dark Gratz/Jokes"
L["NSFW"] = "NSFW"
L["NSFWJokes"] = "NSFW Gratz/Jokes"
L["Mine"] = "Mine"
L["MyJokes"] = "My Gratz/Jokes"
L["AddNewUserJoke"] = "Add A New Gratz/Joke"
L["AddNewUserJokeInput"] = "Input your Gratz/Joke here"
L["AddNewUserJokeButton"] = "Add Gratz/Joke"
L["ErrorDB"] = "Error: Database not loaded correctly. Exit WoW and delete DadGratz.lua found in your SavedVariables folder"
L["DisplayOptionsHeader"] = "Display Options"
L["AutoRespondHeader"] = "Auto Response Options"
L["AutoRespond"] = "Auto Respond To Triggers?"
L["AutoRespondDesc"] = "Shall we automatically respond to event triggers?"
L["delayHeader"] = "Delay Settings"
L["delay"] = "Response Delay"
L["delayDesc"] = "How long of a delay before an automatic response is fired? (seconds)"
L["AutoResponseTriggersDesc"] = "What triggers should we respond to?"
L["GuildAchievement"] = "Respond to Guild Achievement Announcements"
L["MaxLevelReached"] = "Max Level Reached"
L["LevelUps"] = "Level Ups"
L["JokeTypesHeader"] = "Gratz/Jokes Types"
L["jokesSafe"] = "Safe"
L["jokesSafeDesc"] = "Use Safe Gratz/Jokes"
L["jokesQuestionable"] = "Questionable"
L["jokesQuestionableDesc"] = "Use Questionable Gratz/Jokes"
L["jokesDark"] = "Dark"
L["jokesDarkDesc"] = "Use Dark Gratz/Jokes"
L["jokesNSFW"] = "Not Safe For Work"
L["jokesNSFWDesc"] = "Use Not Safe For Work Gratz/Jokes"
L["jokesUser"] = "Mine"
L["jokesUserDesc"] = "Use My Gratz/Jokes"
L["userJokesAdd"] = "My Jokes"
L["userJokesAddDesc"] = "Add your user jokes here and hit ENTER to add it to the database."
L["GuildMemberName"] = "Guild Member Name"
L["GuildMemberNameDesc"] = "What should we call Guild Members?"
L["SlashCommandHeader"] = "Slash Command Options"
L["MySlashCommand"] = "My Slash Command"
L["MySlashCommandDesc"] = "What should we use as a slash command?\n(note: just the command, no slash.\nAlso, /dadgratz and /dg can also be used.)"
L["MacroCreateHeader"] = "Macro Creation"
L["CannotAccessOptionsDuringCombat"] = "Cannot Access Options During Combat!"
--@end-do-not-package@

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
