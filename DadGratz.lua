-- start over
-- step one: Basic Gratz Functionality
-- Things to Gratz:
-- -- Leveling -> Safe, Questionable, NSFW, Dark
-- -- Achievements -> Safe, Questionable, NSFW, Dark
-- -- Joke --> Safe, Questionable, NSFW, Dark
-- step two: Localizations
-- step three: GUI setup
local DG = select(2, ...)
DG.version = GetAddOnMetadata("DadGratz", "Version")

-- Default the saved variables
local DBdefaults = {
	global = {
		["AddonEnabled"] = true,
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
  	OnClick = function(self, button)
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
  DG:TriggeredEvent(MSG,Auth,"Guild")
end
