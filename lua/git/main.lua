local main = require("main")
local neogit = require("git.neogit")
local lush = require("lush")
local colors = require("colors.colors")

---@diagnostic disable: undefined-global

local spec = lush.extends({ main, neogit }).with(function()
	return {
		-- DiffAdd        (), -- Diff mode: Added line |diff.txt|
		-- DiffChange     (), -- Diff mode: Changed line |diff.txt|
		-- DiffDelete     (), -- Diff mode: Deleted line |diff.txt|
		-- DiffText       (), -- Diff mode: Changed text within a changed line |diff.txt|
	}
end)

return spec
