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
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function addon:CheevoReceived(eventName, text, playerName, languageName, ...)
  --@do-not-package@
  addon:Print("CHAT_MSG_GUILD_ACHIEVEMENT Received:\n" .. eventName .. "\n" .. text .. "\n" .. playerName .. "\n" .. languageName)
  --@end-do-not-package@
  addon:FireGratz(playerName)
end

function addon:FireGratz(playerName)
  if addon.db.profile.autoRespond == true then
    --@do-not-package@
    addon:Print("autoRespond is turned on.\n")
    --@end-do-not-package@
    if addon.db.profile.guildAchievement == true then
      --@do-not-package@
      addon:Print("guildAchievement is turned on.\n")
      --@end-do-not-package@
      local gratzMessages = {}
      if addon.db.profile.jokesSafe == true then
        --@do-not-package@
        addon:Print("Safe Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzSafe = getn(DG_globals.jokesSafe)
        --@do-not-package@
        addon:Print("Safe Joke Count = " .. numGratzSafe .. "\n")
        --@end-do-not-package@
        local safeJoke = DG_globals.jokesSafe[random(1, numGratzSafe)]
        --@do-not-package@
        addon:Print("Safe Joke:\n" .. safeJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, safeJoke)
      end
      if addon.db.profile.jokesQuestionable == true then
        --@do-not-package@
        addon:Print("Questionable Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzQuestionable = getn(DG_globals.jokesQuestionable)
        --@do-not-package@
        addon:Print("Questionable Joke Count = " .. numGratzQuestionable .. "\n")
        --@end-do-not-package@
        local questionableJoke = DG_globals.jokesQuestionable[random(1, numGratzQuestionable)]
        --@do-not-package@
        addon:Print("Questionable Joke:\n" .. questionableJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, questionableJoke)
      end
      if addon.db.profile.jokesDark == true then
        --@do-not-package@
        addon:Print("Dark Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzDark = getn(DG_globals.jokesDark)
        --@do-not-package@
        addon:Print("Dark Joke Count = " .. numGratzDark .. "\n")
        --@end-do-not-package@
        local darkJoke = DG_globals.jokesDark[random(1, numGratzDark)]
        --@do-not-package@
        addon:Print("Dark Joke:\n" .. darkJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, darkJoke)
      end
      if addon.db.profile.jokesNSFW == true then
        --@do-not-package@
        addon:Print("NSFW Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzNSFW = getn(DG_globals.jokesNSFW)
        --@do-not-package@
        addon:Print("NSFW Joke Count = " .. numGratzNSFW .. "\n")
        --@end-do-not-package@
        local NSFWJoke = DG_globals.jokesNSFW[random(1, numGratzNSFW)]
        --@do-not-package@
        addon:Print("NSFW Joke:\n" .. NSFWJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, NSFWJoke)
      end
      --[[if addon.db.profile.jokesUser == true then
        addon:Print("User Jokes are enabled.\n")
        local numGratzUser = getn(DG_globals.jokesUser)
        tinsert(gratzMessages, DG_globals.jokesUser[random(1, numGratzUser)])
      end]]--
      local numGratz = getn(gratzMessages)
      --@do-not-package@
      addon:Print("NumberOfGratz = " .. numGratz .. "\n")
      --@end-do-not-package@
      gratzMessage = gratzMessages[random(1, numGratz)]
      --@do-not-package@
      addon:Print("BeforeFormat:\n" .. gratzMessage .. "\n")
      --@end-do-not-package@
      gratzMessage = string.format(gratzMessage, playerName)
      --@do-not-package@
      addon:Print("AfterFormat:\n" .. gratzMessage .. "\n")
      --@end-do-not-package@
      SendChatMessage(gratzMessage, GUILD, languageName)
    end
  end
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
