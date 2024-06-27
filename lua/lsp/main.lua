local main = require("lua.lush_theme.main")
local lush = require("lush")
local colors = require("colors.colors")

---@diagnostic disable: undefined-global

local spec = lush.extends({ main }).with(function()
  return {
    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            () , -- Used for highlighting "text" references
    -- LspReferenceRead            () , -- Used for highlighting "read" references
    -- LspReferenceWrite           () , -- Used for highlighting "write" references
    -- LspCodeLens                 () , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        () , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter () , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
  }
end)
lush(spec)
