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
  local myName, realm = UnitName("player")
  local targetName = gsub(playerName, "%-[^|]+", "")
  if targetName ~= myName then
    DadGratz:ScheduleTimer("FireGratz", random(DadGratz.db.profile.responseDelayMin, DadGratz.db.profile.responseDelayMax), targetName)
  else
    DadGratz:Print("Ooops! Don't want to Gratz myself!")
  end
end

function DadGratz:Welcome(text, playerName, ...)
  local myName, realm = UnitName("player")
  local targetName = gsub(playerName, "%-[^|]+", "")
  if targetName ~= myName then
    --do stuff
  end
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
        local numGratzSafe = getn(DG.globals.jokes.safe)
        --@do-not-package@
        DadGratz:Print("Safe Joke Count = " .. numGratzSafe .. "\n")
        --@end-do-not-package@
        local safeJoke = DG.globals.jokes.safe[random(1, numGratzSafe)]
        --@do-not-package@
        DadGratz:Print("Safe Joke:\n" .. safeJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, safeJoke)
      end
      if DadGratz.db.profile.jokesDad == true then
        --@do-not-package@
        DadGratz:Print("Dad Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzDad = getn(DG.globals.jokes.dad)
        --@do-not-package@
        DadGratz:Print("Dad Joke Count = " .. numGratzDad .. "\n")
        --@end-do-not-package@
        local dadJoke = DG.globals.jokes.dad[random(1, numGratzDad)]
        --@do-not-package@
        DadGratz:Print("Dad Joke:\n" .. dadJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, dadJoke)
      end
      if DadGratz.db.profile.jokesPuns == true then
        --@do-not-package@
        DadGratz:Print("Puns are enabled.\n")
        --@end-do-not-package@
        local numGratzPuns = getn(DG.globals.jokes.puns)
        --@do-not-package@
        DadGratz:Print("Puns Count = " .. numGratzPuns .. "\n")
        --@end-do-not-package@
        local punJoke = DG.globals.jokes.puns[random(1, numGratzPuns)]
        --@do-not-package@
        DadGratz:Print("Pun:\n" .. punJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, punJoke)
      end
      if DadGratz.db.profile.jokesQuestionable == true then
        --@do-not-package@
        DadGratz:Print("Questionable Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzQuestionable = getn(DG.globals.jokes.questionable)
        --@do-not-package@
        DadGratz:Print("Questionable Joke Count = " .. numGratzQuestionable .. "\n")
        --@end-do-not-package@
        local questionableJoke = DG.globals.jokes.questionable[random(1, numGratzQuestionable)]
        --@do-not-package@
        DadGratz:Print("Questionable Joke:\n" .. questionableJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, questionableJoke)
      end
      if DadGratz.db.profile.jokesDark == true then
        --@do-not-package@
        DadGratz:Print("Dark Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzDark = getn(DG.globals.jokes.dark)
        --@do-not-package@
        DadGratz:Print("Dark Joke Count = " .. numGratzDark .. "\n")
        --@end-do-not-package@
        local darkJoke = DG.globals.jokes.dark[random(1, numGratzDark)]
        --@do-not-package@
        DadGratz:Print("Dark Joke:\n" .. darkJoke .. "\n")
        --@end-do-not-package@
        tinsert(gratzMessages, darkJoke)
      end
      if DadGratz.db.profile.jokesNSFW == true then
        --@do-not-package@
        DadGratz:Print("NSFW Jokes are enabled.\n")
        --@end-do-not-package@
        local numGratzNSFW = getn(DG.globals.jokes.nsfw)
        --@do-not-package@
        DadGratz:Print("NSFW Joke Count = " .. numGratzNSFW .. "\n")
        --@end-do-not-package@
        local NSFWJoke = DG.globals.jokes.nsfw[random(1, numGratzNSFW)]
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
