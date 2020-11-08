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
function addon:gratz()
  --sdf
end

function addon:UpdateGuild()
  local numTotalGuildMembers, numOnlineGuildMembers, numOnlineAndMobileMembers = GetNumGuildMembers();
  i = 1
  while i <= numTotalGuildMembers do
    local name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, isSoREligible, standingID = GetGuildRosterInfo(i);
      DG_globals.guild.cache[name] = {
        ["level"] = level,
        ["class"] = class,
        ["online"] = online,
      }
    if online == true then
      DG_globals.guild.member[name] = {
        ["level"] = level,
        ["class"] = class,
        ["online"] = online,
      }
      if DG_globals.guild.member[name]["level"] > DG_globals.guild.cache[name]["level"] then
        --DG_globals.guild.member[name]["levelUp"] = true
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
