local main = require("main")
local lush = require("lush")
local colors = require("colors.colors")

---@diagnostic disable(), -- undefined-global
local spec = lush.extends({ main }).with(function()
  return {
    TelescopeNormal(colors.blue1_fg), -- The normal text in the Telescope window.
    TelescopeBorder(colors.purple_fg), -- The border of the Telescope window.
    TelescopePromptBorder(colors.blue2_fg), -- The border of the prompt area.
    -- TelescopeResultsBorder(), -- The border of the results area.
    -- TelescopePreviewBorder(), -- The border of the preview area.
    -- TelescopeMatching(), -- The matched characters in the results.
    -- TelescopePromptPrefix(), -- The prefix in the prompt area.
    -- TelescopeSelection(), -- The selected item in the results.
    -- TelescopeSelectionCaret(), -- The caret for the selected item.
    -- TelescopeMultiSelection(), -- The selected item in multi-selection mode.
    TelescopeTitle(colors.blue1_fg), -- The title of the Telescope window.
    -- TelescopePromptTitle(), -- The title of the prompt area.
    -- TelescopeResultsTitle(), -- The title of the results area.
    -- TelescopePreviewTitle(), -- The title of the preview area.
    -- TelescopePreviewNormal(), -- The normal text in the preview area.
    -- TelescopePreviewLine(), -- The current line in the preview area.
    -- TelescopePreviewMatch(), -- The matched characters in the preview area.
    -- TelescopePromptCounter(), --
  }
end)
lush(spec)
