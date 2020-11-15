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
DadGratz.globals.jokesDark = {
  "That Achievement is like food, %s. Not everyone gets it.",
  "You deserve congratulatory words for that, %s, but not a proclamation...",
  "Congratulations, %s! You've wanted a win for some time now.",
  "Congratulations on doing something many other players have done before, %s!",
  "Powerful, impressive, firm and unforgettable, %s. But enough about your farting... Congrats!",
  "I always feel more intelligent after reading of your achievements, %s.",
  "Based on that achievement, %s, it’s really difficult to underestimate you.",
  "If you keep working hard at those achievements, %s, someday you’ll be at the top of the bell curve.",
  "I truly love how you just keep grinding at those achievements, %s, and don’t care what others think. That takes a confident person!",
  "What you lack in intelligence, %s, you make up for with effort on those achievements.",
  "OMG! %s! Your achievements make you seem so fun!",
  "Holy Tauren, %s! I didn't expect you to get that achievement — congratulations!",
  "It's like I told the Guild Master the other day, %s. You're really a good player when you make an effort. Just look at that achievment!",
  "Still hunting those achievements, %s? I wish I didn't have any responsbilities like you.",
  "Well, %s, I've seen worse accomplishments from better ...",
  "%s, you deserve much more than a generic congratulations for that achievment. Oh well ... you'll live.",
  "... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sound like 'mats', but there we go!",
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
