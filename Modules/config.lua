--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  PapaBearDoes's DadGratz Addon for World of Warcraft                 |
     |  @project-version@
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local _G = _G
--Durrr = select(2, ...)
local me, ns = ...
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
DadGratz.options = {
  type = "group",
  name = L["AddonName"],
  args = {
    general = {
      order = 1,
      type = "group",
      name = L["GeneralSettings"],
      cmdInline = true,
      args = {
        separator1 = {
          type = "header",
          name = L["GratzOptions"],
          order = 1,
        },
        doNaughty = {
          order = 2,
          type = "toggle",
          name = L["DoNaughtyGratz"],
          desc = L["DoNaughtyGratzToggle"],
          get = function()
            return DadGratz.db.profile.doNaughty
          end,
          set = function(key, value)
            DadGratz.db.profile.doNaughty = value
            if not DadGratz.db.profile.doNaughty then
              DadGratz.db.profile.doNaughty = value
            end
          end,
        },
        DoDark = {
          order = 3,
          type = "toggle",
          name = L["DoDarkGratz"],
          desc = L["DoDarkGratzToggle"],
          get = function()
            return DadGratz.db.profile.doDark
          end,
          set = function(key, value)
            DadGratz.db.profile.doDark = value
            if not DadGratz.db.profile.doDark then
              DadGratz.db.profile.doDark = value
            end
          end,
        },
        showMinimapButton = {
          order = 6,
          type = "toggle",
          name = L["ShowMinimapButton"],
          desc = L["ShowMinimapButtonDesc"],
          get = function()
            if DadGratz.db.profile.mmIcon.hide == true then
              show = false
            else
              show = true
            end
            return show
          end,
          set = function(key, value)
            if value == true then
              DadGratz.db.profile.mmIcon.hide = false
              DadGratzIcon:Show(me .. "_mapIcon")
            else
              DadGratz.db.profile.mmIcon.hide = true
              DadGratzIcon:Hide(me .. "_mapIcon")
            end
          end,
        },
      },
    },
  },
}
--[[
     ########################################################################
     |  Last Editted By: @file-author@ - @file-date-iso@
     |  @file-hash@
     |                                                                      |
     '-------------------------.oooO----------------------------------------|
                              (    )     Oooo.
                              \  (     (    )
                               \__)     )  /
                                       (__/                                   ]]