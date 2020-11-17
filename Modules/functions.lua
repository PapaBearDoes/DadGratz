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
function DadGratz:UpdateGuild()
  local numTotalGuildMembers, numOnlineGuildMembers, numOnlineAndMobileMembers = GetNumGuildMembers();
  i = 1
  while i <= numTotalGuildMembers do
    local name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, isSoREligible, standingID = GetGuildRosterInfo(i);
      DG.globals.guild.cache[name] = {
        ["level"] = level,
        ["class"] = class,
        ["online"] = online,
      }
    if online == true then
      DG.globals.guild.member[name] = {
        ["level"] = level,
        ["class"] = class,
        ["online"] = online,
      }
      if DG.globals.guild.member[name]["level"] > DG.globals.guild.cache[name]["level"] then
        --DG.globals.guild.member[name]["levelUp"] = true
        --[[
        Fire a gratz if setting is set due to level up.
        ]]
      end
    end
    i = i + 1
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
