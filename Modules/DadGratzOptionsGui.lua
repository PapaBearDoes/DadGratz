local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")

-- Messing around!
local OptsGUI = DG:NewModule("DadGratzGUI", "AceGUI-3.0")

--Create the main frame
local OptsFrame = OptsGUI:Create("Frame")
OptsFrame:SetTitle("DadGratz Options")
OptsFrame:SetStatusText("A Collection of 'Dad Joke' based congratulations for your guild mates!")

--Throw the Widgets up!
-- Heading!!!
local heading1 = OptsGUI:Create("Heading")
heading1:SetRelativeWidth(1)
heading1:SetText("This is a heading!")

-- Tab Groups!
local topTabGroups = {
  achievement = "Achievements",
  level = "Leveling",
  joke = "Jokes"
}
local topTabs = OptsGUI:Create("TabGroup")
topTabs:SetTitle("")
topTabs:SetTabs(tabGroups)
topTabs:SelectTab(achievement)

local optsTabGroups = {
  safe = "Safe",
  question = "Questionable",
  nsfw = "NSFW",
  dark = "Dark Humor"
}
local optsTabs = OptsGUI:Create("TabGroup")
optsTabs:SetTitle("")
optsTabs:SetTabs(optsTabGroups)
optsTabs:SelectTab(safe)
