local lush = require("lush")
local hsl = lush.hsl
local blue1 = hsl("#00f6ff")
local blue2 = hsl("#02bbfb")
local purple = hsl("#ff007b")
local surf_green = hsl("#02fbbd")
local light_grey = hsl("#5a6e72")
local yellow = hsl("#eeff00")
local orange = hsl("#fc7f03")
local grey_white = hsl("#829996")
local error_red = hsl("#f7022b")
local warning_yellow = hsl("#758000")

-- require('lush')(require('lush_theme.main'))
return {
	float_border_fg = "#454545",
	selection_config = { bg = yellow.lighten(-50), fg = surf_green },
	blue1_fg = { fg = blue1 },
	blue2_fg = { fg = blue2 },
	grey_fg = { fg = light_grey },
	purple_fg = { fg = purple },
	surf_green_fg = { fg = surf_green },
	orange_fg = { fg = orange },
	yellow_fg = { fg = yellow },
	grey_white_fg = { fg = grey_white },
	error_red_fg = { fg = error_red },
	warning_config = { fg = warning_yellow, bg = surf_green.lighten(-80) },
	diff_add = { bg = surf_green.lighten(-70) },
	diff_delete = { bg = purple.lighten(-70) },
	diff_change = { bg = surf_green.lighten(-50) },
	error_config = { fg = purple, bg = surf_green.lighten(-80) },
	cursor_line_config = { bg = purple.lighten(-80) },
	search_config = { fg = blue2, bg = purple.lighten(-50) },
}
