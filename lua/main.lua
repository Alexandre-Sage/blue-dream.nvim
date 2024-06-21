local lush = require("lush")
---@diagnostic disable: undefined-global
local colors = require("colors.colors")
--local configs = require("lua.configs.configs")
local main = lush(function(f)
	return {
		--
		ColorColumn(colors.blue2_fg), -- Columns set with 'colorcolumn'
		Conceal(colors.purple_fg), -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor(colors.surf_green_fg), -- Character under the cursor
		CurSearch(colors.search_config), -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor(colors.surf_green_fg), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		--CursorIM       (), -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   (), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine(colors.cursor_line_config), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory(blue2_fg), -- Directory names (and other special names in listings)
		-- EndOfBuffer    (), -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     (), -- Cursor in a focused terminal
		-- TermCursorNC   (), -- Cursor in an unfocused terminal
		-- ErrorMsg       (), -- Error messages on the command line
		VertSplit(colors.yellow_fg), -- Column separating vertically split windows
		-- Folded         (), -- Line used for closed folds
		-- FoldColumn     (), -- 'foldcolumn'
		-- SignColumn     (), -- Column where |signs| are displayed
		IncSearch(colors.selection_config), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     (), -- |:substitute| replacement text highlighting
		LineNr(colors.blue2_fg), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove(colors.yellow_fg), -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow(blue2_fg), -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr(colors.yellow_fg), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold (), -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign (), -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen(colors.surf_green_fg), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        (), -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        (), -- Area for messages and cmdline
		-- MsgSeparator   (), -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        (), -- |more-prompt|
		-- NonText        (), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal(colors.blue2_fg), -- Normal text
		NormalFloat(colors.blue2_fg), -- Normal text in floating windows.
		FloatBorder(colors.surf_green_fg), -- Border of floating windows.
		FloatTitle(colors.blue1_fg), -- Title of floating windows.
		NormalNC(colors.grey_fg), -- normal text in non-current windows
		Pmenu(colors.surf_green_fg), -- Popup menu: Normal item.
		PmenuSel(colors.selection_config), -- Popup menu: Selected item.
		PmenuKind(colors.purple_fg), -- Popup menu: Normal item "kind"
		PmenuKindSel(colors.purple_fg), -- Popup menu: Selected item "kind"
		PmenuExtra(colors.surf_green_fg), -- Popup menu: Normal item "extra text"
		PmenuExtraSel(colors.search_config), -- Popup menu: Selected item "extra text"
		PmenuSbar(colors.yellow_fg), -- Popup menu: Scrollbar.
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

		Constant(colors.surf_green_fg), -- (*) Any constant
		String(colors.blue1_fg), --   A string constant: "this is a string"
		Character(colors.yellow_fg), --   A character constant: 'c', '\n'
		Number(colors.orange_fg), --   A number constant: 234, 0xff
		Boolean(colors.yellow_fg), --   A boolean constant: TRUE, false
		-- Float          (), --   A floating point constant: 2.3e10
		Identifier(colors.blue2_fg), -- (*) Any variable name
		Function(colors.blue2_fg), --   Function name (also: methods for classes)
		Statement(colors.purple_fg), -- (*) Any statement
		Conditional(colors.purple_fg), --   if, then, else, endif, switch, etc.
		Repeat(colors.purple_fg), --   for, do, while, etc.
		Label(colors.purple_fg), --   case, default, etc.
		Operator(colors.purple_fg), --   "sizeof", "+", "*", etc.
		Keyword(colors.purple_fg), --   any other keyword
		Exception(colors.purple_fg), --   try, catch, throw

		-- PreProc        (), -- (*) Generic Preprocessor
		Include(colors.purple_fg), --   Preprocessor #include
		-- Define         (), --   Preprocessor #define
		-- Macro          (), --   Same as Define
		-- PreCondit      (), --   Preprocessor #if, #else, #endif, etc.

		Type(colors.blue2_fg), -- (*) int, long, char, etc.
		StorageClass(colors.purple_fg), --   static, register, volatile, etc.
		Structure(colors.purple_fg), --   struct, union, enum, etc.
		-- Typedef        (), --   A typedef

		-- Special        (), -- (*) Any special symbol
		-- SpecialChar    (), --   Special character in a constant
		-- Tag            (), --   You can use CTRL-] on this
		Delimiter(colors.blue1_fg), --   Character that needs attention
		-- SpecialComment (), --   Special things inside a comment (e.g. '\n')
		-- Debug          (), --   Debugging statements

		-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		-- Error          { }, -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return main
--------------------------------------------------------
-- local lush = require('lush')
--
-- ---@diagnostic disable: undefined-global
--
-- local spec = lush.extends({ main }).with(function()
-- 	return {
-- 	}
-- end)
--lush(spec)
---------------------------------------------------------

-- vi:nowrap
