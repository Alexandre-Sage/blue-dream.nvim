local main = require("main")
local lush = require("lush")
local colors = require("colors.colors")

---@diagnostic disable: undefined-global

local spec = lush.extends({ main }).with(function(injected_functions)
	local sym = injected_functions.sym
	return {
		--sym("@keyword")(colors.purple_fg),
		--sym("@keyword.coroutine")(colors.blue2_fg),
		--sym("@keyword.function")(colors.purple_fg),
		--sym("@keyword.operator")(colors.purple_fg),
		--sym("@keyword.import")(colors.purple_fg),
		--sym("@keyword.type")(colors.purple_fg),
		--sym("@keyword.modifier")(colors.purple_fg),
		--sym("@keyword.repeat")(colors.purple_fg), --
		--sym("@keyword.return")(colors.purple_fg), --
		--sym("@keyword.debug")(colors.blue1_fg),
		--sym("@keyword.exception")(colors.purple_fg),
		--sym("@keyword.conditional")(colors.purple_fg),
		--sym("@keyword.conditional.ternary")(colors.yellow_fg),
		---- sym("@keyword.directive")(),
		---- sym("@keyword.directive.define")(),

		sym("@variable")(colors.surf_green_fg),
		--sym("@variable.builtin")(colors.surf_green_fg),
		--sym("@variable.parameter")(colors.yellow_fg),
		--sym("@variable.parameter.builtin")(colors.yellow_fg),
		--sym("@variable.member")(colors.blue2_fg),

		--sym("@variable.usage")(colors.yellow_fg), -- Identifier
		--sym("@constant")(colors.grey_fg), -- Constant
		--sym("@constant.builtin")(colors.surf_green_fg), -- Special
		--sym("@function")(colors.blue2_fg), -- Function
		--sym("@function.builtin")(colors.blue2_fg), -- Special
		--sym("@function.call")(colors.blue2_fg),
		---- sym"@function.macro"    (), -- Macro

		--sym("@boolean")(colors.yellow_fg), -- Boolean
		--sym("@number")(colors.purple_fg),
		--sym("@number.float")(colors.purple_fg), -- Float
		--sym("@parameter")(colors.grey_fg), -- Identifier
		--sym("@method")(colors.blue2_fg), -- Function
		--sym("@field")(colors.yellow_fg), -- Identifier
		--sym("@property")(colors.yellow_fg), -- Identifier
		--sym("@constructor")(colors.purple_fg), -- Special
		--sym("@conditional")(colors.purple_fg), -- Conditional
		--sym("@repeat")(colors.purple_fg), -- Repeat

		--sym("@operator")(colors.surf_green_fg), -- Operator
		---- sym"@exception"         (), -- Exception
		--sym("@type")(colors.blue2_fg), -- Type
		--sym("@type.definition")(colors.grey_fg), -- Typedef
		--sym("@type.builtin")(colors.grey_white_fg),
		--sym("@storageclass")(colors.purple_fg), -- StorageClass
		--sym("@structure")(colors.purple_fg), -- Structure
		---- sym"@namespace"         (), -- Identifier
		---- sym"@include"           (), -- Include
		---- sym"@debug"             (), -- Debug
		--sym("@string")(colors.surf_green_fg),
		--sym("@text.literal")(colors.surf_green_fg),
		---- sym"@text.reference"    (), -- Identifie
		---- sym"@text.title"        (), -- Title
		--sym("@text.uri")(colors.yellow_fg), -- Under
		---- sym"@text.underline"    (), -- Underlined
		---- sym"@text.todo"         (), -- Todo
		---- sym"@comment"           (), -- Comment
		--sym("@punctuation")(colors.yellow_fg), -- De
		---- sym"@label"             (), -- Label
		---- sym"@preproc"           (), -- PreProc
		--sym("@tag")(colors.yellow_fg), -- Tag
		--sym("@tag.builtin")(colors.yellow_fg),

		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- sym"@text.literal"      (), -- Comment
		-- sym"@text.reference"    (), -- Identifier
		-- sym"@text.title"        (), -- Title
		-- sym"@text.uri"          (), -- Underlined
		-- sym"@text.underline"    (), -- Underlined
		-- sym"@text.todo"         (), -- Todo
		-- sym"@comment"           (), -- Comment
		-- sym"@punctuation"       (), -- Delimiter
		-- sym"@constant"          (), -- Constant
		-- sym"@constant.builtin"  (), -- Special
		-- sym"@constant.macro"    (), -- Define
		-- sym"@define"            (), -- Define
		-- sym"@macro"             (), -- Macro
		-- sym"@string"            (), -- String
		-- sym"@string.escape"     (), -- SpecialChar
		-- sym"@string.special"    (), -- SpecialChar
		-- sym"@character"         (), -- Character
		-- sym"@character.special" (), -- SpecialChar
		-- sym"@number"            (), -- Number
		-- sym"@boolean"           (), -- Boolean
		-- sym"@float"             (), -- Float
		-- sym"@function"          (), -- Function
		-- sym"@function.builtin"  (), -- Special
		-- sym"@function.macro"    (), -- Macro
		-- sym"@parameter"         (), -- Identifier
		-- sym"@method"            (), -- Function
		-- sym"@field"             (), -- Identifier
		-- sym"@property"          (), -- Identifier
		-- sym"@constructor"       (), -- Special
		-- sym"@conditional"       (), -- Conditional
		-- sym"@repeat"            (), -- Repeat
		-- sym"@label"             (), -- Label
		-- sym"@operator"          (), -- Operator
		sym("@keyword")(colors.purple_fg), -- Keyword
		-- sym"@exception"         (), -- Exception
		-- sym"@variable"          (), -- Identifier
		-- sym"@type"              (), -- Type
		-- sym"@type.definition"   (), -- Typedef
		-- sym"@storageclass"      (), -- StorageClass
		-- sym"@structure"         (), -- Structure
		-- sym"@namespace"         (), -- Identifier
		-- sym"@include"           (), -- Include
		-- sym"@preproc"           (), -- PreProc
		-- sym"@debug"             (), -- Debug
		-- sym"@tag"               (), -- Tag
	}
end)
-- lush(spec)
return spec
