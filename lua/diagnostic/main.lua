local main = require("lua.lush_theme.main")
local lush = require('lush')
local colors = require("lua.colors.colors")

---@diagnostic disable: undefined-global

local spec = lush.extends({ main }).with(function()
	return {
		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- DiagnosticError            () , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticWarn             () , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticInfo             () , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticHint             () , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticOk               () , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError () , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  () , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  () , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  () , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    () , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   () , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    () , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    () , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    () , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      () , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    () , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     () , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     () , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     () , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       () , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        () , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         () , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         () , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         () , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           () , -- Used for "Ok" signs in sign column.
	}
end)
lush(spec)
