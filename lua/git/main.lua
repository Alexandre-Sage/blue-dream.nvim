local main = require("main")
local neogit = require("git.neogit")
local lush = require("lush")
local colors = require("colors.colors")
local diff = require("git.diffview")
---@diagnostic disable: undefined-global

local spec = lush.extends({ main, neogit, diff }).with(function()
  return {
    DiffAdd(colors.diff_add), -- Diff mode: Added line |diff.txt|
    DiffChange(colors.diff_change), -- Diff mode: Changed line |diff.txt|
    DiffDelete(colors.diff_delete), -- Diff mode: Deleted line |diff.txt|
    DiffText(colors.diff_change), -- Diff mode: Changed text within a changed line |diff.txt|
  }
end)

return spec
