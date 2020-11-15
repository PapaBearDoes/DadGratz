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
function DadGratz:CheevoReceived(eventName, text, playerName, languageName, ...)
  --@do-not-package@
  DadGratz:Print("CHAT_MSG_GUILD_ACHIEVEMENT Received:\n" .. eventName .. "\n" .. text .. "\n" .. playerName .. "\n" .. languageName)
  --@end-do-not-package@
  DadGratz:ScheduleTimer("FireGratz", random(DadGratz.db.profile.responseDelayMin, DadGratz.db.profile.responseDelayMax), gsub(playerName, "%-[^|]+", ""))
end

function DadGratz:FireGratz(playerName)
  if DadGratz.db.profile.autoRespond == true then
    --@do-not-package@
    DadGratz:Print("autoRespond is turned on.\n")
    --@end-do-not-package@
    if DadGratz.db.profile.guildAchievement == true then
      --@do-not-package@
      DadGratz:Print("guildAchievement is turned on.\n")
      --@end-do-not-package@
      local gratzMessages = {}
      if DadGratz.db.profile.jokesSafe == true then
        --@do-not-package@
        DadGratz:Print("Safe Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzSafe = getn(DadGratz.globals.jokesSafe)
        --@do-not-package@
        DadGratz:Print("Safe Joke Count = " .. numGratzSafe .. "\n")
        --@end-do-not-package@
        local safeJoke = DadGratz.globals.jokesSafe[random(1, numGratzSafe)]
        --@do-not-package@
        DadGratz:Print("Safe Joke:\n" .. safeJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, safeJoke)
      end
      if DadGratz.db.profile.jokesDad == true then
        --@do-not-package@
        DadGratz:Print("Dad Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzDad = getn(DadGratz.globals.jokesDad)
        --@do-not-package@
        DadGratz:Print("Dad Joke Count = " .. numGratzDad .. "\n")
        --@end-do-not-package@
        local dadJoke = DadGratz.globals.jokesDad[random(1, numGratzDad)]
        --@do-not-package@
        DadGratz:Print("Dad Joke:\n" .. dadJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, dadJoke)
      end
      if DadGratz.db.profile.jokesPuns == true then
        --@do-not-package@
        DadGratz:Print("Puns are enabled.\n")
        --@end-do-not-package@
        local numGratzPuns = getn(DadGratz.globals.jokesPuns)
        --@do-not-package@
        DadGratz:Print("Puns Count = " .. numGratzPuns .. "\n")
        --@end-do-not-package@
        local punJoke = DadGratz.globals.jokesPuns[random(1, numGratzPuns)]
        --@do-not-package@
        DadGratz:Print("Pun:\n" .. punJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, punJoke)
      end
      if DadGratz.db.profile.jokesQuestionable == true then
        --@do-not-package@
        DadGratz:Print("Questionable Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzQuestionable = getn(DadGratz.globals.jokesQuestionable)
        --@do-not-package@
        DadGratz:Print("Questionable Joke Count = " .. numGratzQuestionable .. "\n")
        --@end-do-not-package@
        local questionableJoke = DadGratz.globals.jokesQuestionable[random(1, numGratzQuestionable)]
        --@do-not-package@
        DadGratz:Print("Questionable Joke:\n" .. questionableJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, questionableJoke)
      end
      if DadGratz.db.profile.jokesDark == true then
        --@do-not-package@
        DadGratz:Print("Dark Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzDark = getn(DadGratz.globals.jokesDark)
        --@do-not-package@
        DadGratz:Print("Dark Joke Count = " .. numGratzDark .. "\n")
        --@end-do-not-package@
        local darkJoke = DadGratz.globals.jokesDark[random(1, numGratzDark)]
        --@do-not-package@
        DadGratz:Print("Dark Joke:\n" .. darkJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, darkJoke)
      end
      if DadGratz.db.profile.jokesNSFW == true then
        --@do-not-package@
        DadGratz:Print("NSFW Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzNSFW = getn(DadGratz.globals.jokesNSFW)
        --@do-not-package@
        DadGratz:Print("NSFW Joke Count = " .. numGratzNSFW .. "\n")
        --@end-do-not-package@
        local NSFWJoke = DadGratz.globals.jokesNSFW[random(1, numGratzNSFW)]
        --@do-not-package@
        DadGratz:Print("NSFW Joke:\n" .. NSFWJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, NSFWJoke)
      end
      if DadGratz.db.profile.jokesUser == true then
        --@do-not-package@
        DadGratz:Print("My Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzUser = getn(DadGratz.db.profile.myJokes)
        --@do-not-package@
        DadGratz:Print("My Joke Count = " .. numGratzUser .. "\n")
        --@end-do-not-package@
        local UserJoke = DadGratz.db.profile.myJokes[random(1, numGratzUser)]
        --@do-not-package@
        DadGratz:Print("My Joke:\n" .. UserJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, UserJoke)
      end

      local numGratz = getn(gratzMessages)
      --@do-not-package@
      DadGratz:Print("NumberOfGratz = " .. numGratz .. "\n")
      --@end-do-not-package@
      gratzMessage = gratzMessages[random(1, numGratz)]
      --@do-not-package@
      DadGratz:Print("BeforeFormat:\n" .. gratzMessage .. "\n")
      --@end-do-not-package@
      gratzMessage = string.format(gratzMessage, playerName)
      --@do-not-package@
      DadGratz:Print("AfterFormat:\n" .. gratzMessage .. "\n")
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
