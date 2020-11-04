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
function addon:UpdateGuildInfo()
  local numTotalGuildMembers, numOnlineGuildMembers, numOnlineAndMobileMembers = GetNumGuildMembers();
  DG_globals.numGuildMembers.total = numTotalGuildMembers
  DG_globals.numGuildMembers.numOnline = numOnlineGuildMembers
end

function addon:UpdateGuildMemberInfoCache()
  addon:UpdateGuildInfo()
  local i = 1
  while i < DG_globals.numGuildMembers.total do
    local name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, isSoREligible, standingID = GetGuildRosterInfo(i);
    DG_globals.guildMembers[i]["cache"] = {
      ["name"] = name,
      ["level"] = level,
      ["class"] = class,
      ["online"] = online,
    }
    i = i + 1
  end
  addon:LevelCheck()
end

function addon:LevelCheck()
  addon:UpdateGuildInfo()
  local i = 0
  while i < DG_globals.numGuildMembers.numOnline do
    i = i + 1
    local name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, isSoREligible, standingID = GetGuildRosterInfo(i);
    DG_globals.guildMembers[i] = {
      ["name"] = name,
      ["level"] = level,
      ["class"] = class,
      ["online"] = online,
    }
    if DG_globals.guildMembers[i]["level"] > DG_globals.guildMembers[i]["cache"]["level"] then
      DG_globals.guildMembers[i]["levelUp"] = true
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
