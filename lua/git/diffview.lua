local main = require("main")
local lush = require("lush")
local colors = require("colors.colors")

---@diagnostic disable: undefined-global

local spec = lush.extends({ main }).with(function()
  return {
    DiffViewChange(colors.surf_green_fg),
    DiffViewAdd(colors.surf_green_fg),
    DiffViewDelete(colors.purple_fg),
  }
end)

return spec
