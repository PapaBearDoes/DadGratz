-- start over
-- step one: Basic Gratz Functionality
-- Things to Gratz:
-- -- Leveling -> Safe, Questionable, NSFW, Dark
-- -- Achievements -> Safe, Questionable, NSFW, Dark
-- -- Joke --> Safe, Questionable, NSFW, Dark
-- step two: Localizations
-- step three: GUI setup
local DG = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")
cheevoCount = 0

DG.version = GetAddOnMetadata("DadGratz", "Version")

-- Default the saved variables
local DBdefaults = {
	global = {
		["AddonEnabled"] = true,
    ["LockOutTime"] = 5,
    --minimapIcon
    minimap = {
      hide = false,
      minimapPos = 215,
    },
	},
}

function DG:OnInitialize()
  DG.db = LibStub:GetLibrary("AceDB-3.0"):New("DadGratz", DBdefaults, true)
  DG:RegisterEvent("CHAT_MSG_GUILD")
  DG:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT")
  DG.LastRunDelayTime = 0
  DG.AddonDelayCheck = 0

	for moduleName, module in pairs(DG.modules) do
		DG[moduleName] = module
	end
	DG:RegisterModule()

  --Make the LibDataBroker
  local DadGratzLDB = LibStub("LibDataBroker-1.1"):NewDataObject("DadGratzLDB", {
    type = "data source",
    text = "DadGratz",
  	icon = "Interface\\Icons\\INV_Guild_Standard_Horde_C",
  	OnTooltipShow = function(tooltip)
  		tooltip:AddDoubleLine("");
  		tooltip:AddDoubleLine("");
  		tooltip:AddDoubleLine("");
  	end,
  	OnClick = function(self, button) -- Left Click = Enable/Disable Addon, Right Click = open options GUI.
  	end
  })
  --Make the MiniMap Button
  local DadGratzIcon = LibStub("LibDBIcon-1.0")
  DadGratzIcon:Register("DadGratz", DadGratzLDB, DG.db.global.minimap)
end

function DG:OnEnable()
end

function DG:RegisterModule()
  DG.moduleOptions = {callback="Options:Load"}
end

function DG:CHAT_MSG_GUILD(_,MSG,Auth)
  DG:TriggeredEvent("Guild Message: " .. MSG,Auth,"Guild",false,cheevoCount)
end

function DG:CHAT_MSG_GUILD_ACHIEVEMENT(_,MSG,Auth)
  cheevoCount = cheevoCount + 1
  DG:TriggeredEvent("Guild Cheevo: " .. MSG,Auth,"Guild",true,cheevoCount)
end

--[[
--GUI testing
-- Messing around!
local optsGUI = LibStub("AceGUI-3.0")

-- function that draws the widgets for the first tab
local function DrawGroup1(container)
  local desc = optsGUI:Create("Label")
  desc:SetText("This is Tab 1")
  desc:SetFullWidth(true)
  container:AddChild(desc)

  local button = optsGUI:Create("Button")
  button:SetText("Tab 1 Button")
  button:SetWidth(200)
  container:AddChild(button)
end

-- function that draws the widgets for the second tab
local function DrawGroup2(container)
  local desc = optsGUI:Create("Label")
  desc:SetText("This is Tab 2")
  desc:SetFullWidth(true)
  container:AddChild(desc)

  local button = optsGUI:Create("Button")
  button:SetText("Tab 2 Button")
  button:SetWidth(200)
  container:AddChild(button)
end

-- Callback function for OnGroupSelected
local function SelectGroup(container, event, group)
   container:ReleaseChildren()
   if group == "tab1" then
      DrawGroup1(container)
   elseif group == "tab2" then
      DrawGroup2(container)
   end
end

-- Create the frame container
local optsFrame = optsGUI:Create("Frame")
optsFrame:SetTitle("Example Frame")
optsFrame:SetStatusText("AceGUI-3.0 Example Container Frame")
optsFrame:SetCallback("OnClose", function(widget) AceGUI:Release(widget) end)
-- Fill Layout - the TabGroup widget will fill the whole frame
optsFrame:SetLayout("Fill")

-- Create the TabGroup
local tab = optsGUI:Create("TabGroup")
tab:SetLayout("Flow")
-- Setup which tabs to show
tab:SetTabs({{text="Tab 1", value="tab1"}, {text="Tab 2", value="tab2"}})
-- Register callback
tab:SetCallback("OnGroupSelected", SelectGroup)
-- Set initial Tab (this will fire the OnGroupSelected callback)
tab:SelectTab("tab1")
-- add to the frame container
optsFrame:AddChild(tab)
]]