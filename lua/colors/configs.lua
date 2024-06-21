--local colors = require("lua.colors.colors")
local lush = require("lush")
local hsl = lush.hsl
local colors = {
  blue1 = hsl("#00f6ff"),
  blue2 = hsl("#02bbfb"),
  purple = hsl("#ff007b"),
  surf_green = hsl("#02fbbd"),
  light_grey = hsl("#5a6e72"),
  yellow = hsl("#eeff00"),
  orange = hsl("#fc7f03"),
  grey_white = hsl("#829996"),
  error_red = hsl("#f7022b"),
  warning_yellow = hsl("#758000"),
}
local configs = {
  float_border_fg = "#454545",
  selection_config = { bg = colors.yellow.lighten(-50), fg = colors.surf_green },
  blue1_fg = { fg = colors.lue1 },
  blue2_fg = { fg = colors.lue2 },
  grey_fg = { fg = colors.light_grey },
  purple_fg = { fg = colors.purple },
  surf_green_fg = { fg = colors.surf_green },
  orange_fg = { fg = colors.orange },
  yellow_fg = { fg = colors.yellow },
  grey_white_fg = { fg = colors.grey_white },
  error_red_fg = { fg = colors.error_red },
  warning_config = { fg = colors.warning_yellow, bg = colors.surf_green.lighten(-80) },
  error_config = { fg = colors.purple, bg = colors.surf_green.lighten(-80) },
  cursor_line_config = { bg = colors.purple.lighten(-80) },
  search_config = { fg = colors.blue2, bg = colors.purple.lighten(-50) },
}

return configs
