local lush = require("lush")
local base = require("lua.main")
local treesitter_theme = require("lua.treesitter.main")
local git = require("lua.git.main")

local theme = lush.merge({
	treesitter_theme,
	base,
	git,
})

return theme
