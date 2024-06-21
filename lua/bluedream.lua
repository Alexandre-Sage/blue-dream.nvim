local lush = require("lush")
local base = require("main")
local treesitter_theme = require("treesitter.main")
local git = require("git.main")

local theme = lush.merge({
  treesitter_theme,
  base,
  git,
})

return theme
