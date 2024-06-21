--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter heme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl
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
local float_border_fg = "#454545"
local selection_config = { bg = yellow.lighten(-50), fg = surf_green }
local blue1_fg = { fg = blue1 }
local blue2_fg = { fg = blue2 }
local grey_fg = { fg = light_grey }
local purple_fg = { fg = purple }
local surf_green_fg = { fg = surf_green }
local orange_fg = { fg = orange }
local yellow_fg = { fg = yellow }
local grey_white_fg = { fg = grey_white }
local error_red_fg = { fg = error_red }
local warning_config = { fg = warning_yellow, bg = surf_green.lighten(-80) }
local error_config = { fg = purple, bg = surf_green.lighten(-80) }
local cursor_line_config = { bg = purple.lighten(-80) }
local search_config = { fg = blue2, bg = purple.lighten(-50) }

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		ColorColumn(blue2_fg), -- Columns set with 'colorcolumn'
		Conceal(purple_fg), -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor(surf_green_fg), -- Character under the cursor
		CurSearch(search_config), -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor(surf_green_fg), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		--CursorIM       (), -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   (), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine(cursor_line_config), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory(blue2_fg), -- Directory names (and other special names in listings)
		-- EndOfBuffer    (), -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     (), -- Cursor in a focused terminal
		-- TermCursorNC   (), -- Cursor in an unfocused terminal
		-- ErrorMsg       (), -- Error messages on the command line
		VertSplit(yellow_fg), -- Column separating vertically split windows
		-- Folded         (), -- Line used for closed folds
		-- FoldColumn     (), -- 'foldcolumn'
		-- SignColumn     (), -- Column where |signs| are displayed
		IncSearch(selection_config), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     (), -- |:substitute| replacement text highlighting
		LineNr(blue2_fg), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove(yellow_fg), -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow(blue2_fg), -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr(yellow_fg), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold (), -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign (), -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen(surf_green_fg), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        (), -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        (), -- Area for messages and cmdline
		-- MsgSeparator   (), -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        (), -- |more-prompt|
		-- NonText        (), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal(blue2_fg), -- Normal text
		NormalFloat(blue2_fg), -- Normal text in floating windows.
		FloatBorder(surf_green_fg), -- Border of floating windows.
		FloatTitle(blue1_fg), -- Title of floating windows.
		NormalNC(grey_fg), -- normal text in non-current windows
		Pmenu(surf_green_fg), -- Popup menu: Normal item.
		PmenuSel(selection_config), -- Popup menu: Selected item.
		PmenuKind(purple_fg), -- Popup menu: Normal item "kind"
		PmenuKindSel(purple_fg), -- Popup menu: Selected item "kind"
		PmenuExtra(surf_green_fg), -- Popup menu: Normal item "extra text"
		PmenuExtraSel(search_config), -- Popup menu: Selected item "extra text"
		PmenuSbar(yellow_fg), -- Popup menu: Scrollbar.
		-- PmenuThumb     (), -- Popup menu: Thumb of the scrollbar.
		-- Question       (), -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   (), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- Search         (), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     (), -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       (), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       (), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     (), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      (), -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLine     (), -- Status line of current window
		-- StatusLineNC   (), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine        (), -- Tab pages line, not active tab page label
		-- TabLineFill    (), -- Tab pages line, where there are no labels
		-- TabLineSel     (), -- Tab pages line, active tab page label
		-- Title          (), -- Titles for output from ":set all", ":autocmd" etc.
		-- Visual         (), -- Visual mode selection
		-- VisualNOS      (), -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg     (), -- Warning messages
		-- Whitespace     (), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   (), -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       (), -- Current match in 'wildmenu' completion
		-- WinBar         (), -- Window bar of current window
		-- WinBarNC       (), -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		-- Comment        (), -- Any comment

		Constant(surf_green_fg), -- (*) Any constant
		String(blue1_fg), --   A string constant: "this is a string"
		Character(yellow_fg), --   A character constant: 'c', '\n'
		Number(orange_fg), --   A number constant: 234, 0xff
		Boolean(yellow_fg), --   A boolean constant: TRUE, false
		-- Float          (), --   A floating point constant: 2.3e10
		Identifier(blue2_fg), -- (*) Any variable name
		Function(blue2_fg), --   Function name (also: methods for classes)
		Statement(purple_fg), -- (*) Any statement
		Conditional(purple_fg), --   if, then, else, endif, switch, etc.
		Repeat(purple_fg), --   for, do, while, etc.
		Label(purple_fg), --   case, default, etc.
		Operator(purple_fg), --   "sizeof", "+", "*", etc.
		Keyword(purple_fg), --   any other keyword
		Exception(purple_fg), --   try, catch, throw

		-- PreProc        (), -- (*) Generic Preprocessor
		Include(purple_fg), --   Preprocessor #include
		-- Define         (), --   Preprocessor #define
		-- Macro          (), --   Same as Define
		-- PreCondit      (), --   Preprocessor #if, #else, #endif, etc.

		Type(blue2_fg), -- (*) int, long, char, etc.
		StorageClass(purple_fg), --   static, register, volatile, etc.
		Structure(purple_fg), --   struct, union, enum, etc.
		-- Typedef        (), --   A typedef

		-- Special        (), -- (*) Any special symbol
		-- SpecialChar    (), --   Special character in a constant
		-- Tag            (), --   You can use CTRL-] on this
		Delimiter(blue1_fg), --   Character that needs attention
		-- SpecialComment (), --   Special things inside a comment (e.g. '\n')
		-- Debug          (), --   Debugging statements

		-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		-- Error          { }, -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		sym("@keyword")(purple_fg),
		sym("@keyword.coroutine")(blue2_fg),
		sym("@keyword.function")(purple_fg),
		sym("@keyword.operator")(purple_fg),
		sym("@keyword.import")(purple_fg),
		sym("@keyword.type")(purple_fg),
		sym("@keyword.modifier")(purple_fg),
		sym("@keyword.repeat")(purple_fg), --
		sym("@keyword.return")(purple_fg), --
		sym("@keyword.debug")(blue1_fg),
		sym("@keyword.exception")(purple_fg),
		sym("@keyword.conditional")(purple_fg),
		sym("@keyword.conditional.ternary")(yellow_fg),
		-- sym("@keyword.directive")(),
		-- sym("@keyword.directive.define")(),

		sym("@variable")(surf_green_fg),
		sym("@variable.builtin")(surf_green_fg),
		sym("@variable.parameter")(yellow_fg),
		sym("@variable.parameter.builtin")(yellow_fg),
		sym("@variable.member")(blue2_fg),

		sym("@variable.usage")(yellow_fg), -- Identifier
		sym("@constant")(grey_fg), -- Constant
		sym("@constant.builtin")(surf_green_fg), -- Special
		sym("@function")(blue2_fg), -- Function
		sym("@function.builtin")(blue2_fg), -- Special
		sym("@function.call")(blue2_fg),
		-- sym"@function.macro"    (), -- Macro

		sym("@boolean")(yellow_fg), -- Boolean
		sym("@number")(purple_fg),
		sym("@number.float")(purple_fg), -- Float
		sym("@parameter")(grey_fg), -- Identifier
		sym("@method")(blue2_fg), -- Function
		sym("@field")(yellow_fg), -- Identifier
		sym("@property")(yellow_fg), -- Identifier
		sym("@constructor")(purple_fg), -- Special
		sym("@conditional")(purple_fg), -- Conditional
		sym("@repeat")(purple_fg), -- Repeat

		sym("@operator")(surf_green_fg), -- Operator
		-- sym"@exception"         (), -- Exception
		sym("@type")(blue2_fg), -- Type
		sym("@type.definition")(grey_fg), -- Typedef
		sym("@type.builtin")(grey_white_fg),
		sym("@storageclass")(purple_fg), -- StorageClass
		sym("@structure")(purple_fg), -- Structure
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
