local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

--[[-- Messing around!
local optsGUI = DG:LibStub("AceGUI-3.0")

--Create the main frame
local optsFrame = optsGUI:Create("Frame")
optsFrame:SetTitle("DadGratz Options")
optsFrame:SetStatusText("A Collection of 'Dad Joke' based congratulations for your guild mates!")
--optsFrame:IsVisible(1)
--optsFrame:IsShown(1)

--Throw the Widgets up!
-- Heading!!!
local heading1 = optsGUI:Create("Heading")
heading1:SetRelativeWidth(1)
heading1:SetText("This is a heading!")

-- Tab Groups!
local topTabGroups = {
  achievement = "Achievements",
  level = "Leveling",
  joke = "Jokes"
}
local topTabs = optsGUI:Create("TabGroup")
topTabs:SetTitle("")
topTabs:SetTabs(tabGroups)
topTabs:SelectTab(achievement)

local optsTabGroups = {
  safe = "Safe",
  question = "Questionable",
  nsfw = "NSFW",
  dark = "Dark Humor"
}
local optsTabs = optsGUI:Create("TabGroup")
optsTabs:SetTitle("")
optsTabs:SetTabs(optsTabGroups)
optsTabs:SelectTab(safe)
]]
