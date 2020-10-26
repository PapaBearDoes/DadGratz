local DadGratz = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("DadGratz")
--local L = LibStub("AceLocale-3.0"):NewLocale("DadGratz", "enUS", true)

local DadGratz = LibStub("AceAddon-3.0"):NewAddon("DadGratz", "AceConsole-3.0")

--Make the LibDataBroker
local DadGratzLDB = LibStub("LibDataBroker-1.1"):NewDataObject("DadGratzLDB", {
  type = "data source",
  text = "DadGratz",
	icon = "Interface\\Icons\\",
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

--Functions
function DadGratz:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("DadGratzSV", {
  	minimap = {
    	hide = false,
			minimapPos = 90,
  	},
		DadGratz = {
--			Key = Value,
		}
	})
	DadGratzIcon:Register("DadGratz", DadGratzLDB, self.db.profile.minimap)
end
