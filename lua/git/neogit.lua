local lush = require("lush")
local main = require("main")
local colors = require("colors.colors")
---@diagnostic disable: undefined-global

local spec = lush.extends({ main }).with(function()
  return {
    --------------- STATUS BUFFER ---------------
    NeogitBranch(colors.surf_green_fg), --        Local branches
    NeogitBranchHead(colors.blue1_fg), --        Accent highlight for current HEAD in LogBuffer
    -- NeogitRemote        ()  , --        Remote branches
    NeogitObjectId(colors.grey_fg), --        Object's SHA hash
    -- NeogitStash         ()  , --        Stash name
    NeogitFold(colors.blue2_fg), --        Folded text highlight
    -- NeogitRebaseDone    ()  , --        Current position within rebase
    -- NeogitTagName       ()  , --        Closest Tag name
    -- NeogitTagDistance   ()  , --        Number of commits between the tag and HEAD
    NeogitStatusHEAD(colors.yellow_fg), --        The left text in the HEAD section

    -- STATUS BUFFER SECTION HEADERS
    NeogitSectionHeader(colors.purple_fg),
    NeogitUnpushedTo(colors.yellow_fg), -- Linked to NeogitSectionHeader
    -- NeogitUnmergedInto       (), -- ^
    -- NeogitUnpulledFrom       (), -- ^
    NeogitUntrackedfiles(colors.orange_fg), -- ^
    -- NeogitUnstagedchanges    (), -- ^
    -- NeogitUnmergedchanges    (), -- ^
    -- NeogitUnpushedchanges    (), -- ^
    -- NeogitUnpulledchanges    (), -- ^
    NeogitRecentcommits(colors.purple_fg), -- ^
    -- NeogitStagedchanges      (), -- ^
    NeogitStashes(colors.yellow_fg), -- ^
    -- NeogitRebasing           (), -- ^
    -- NeogitReverting          (), -- ^
    -- NeogitPicking            (), -- ^
    NeogitMerging(colors.surf_green_fg), -- ^
    -- NeogitBisecting          (), -- ^
    -- NeogitSectionHeaderCount (), -- The number, for sections with a number.
    -- STATUS BUFFER FILE
    --
    -- NeogitChangeModified(),
    -- NeogitChangeAdded(),
    -- NeogitChangeDeleted(),
    -- NeogitChangeRenamed(),
    -- NeogitChangeUpdated(),
    -- NeogitChangeCopied(),
    -- NeogitChangeNewFile(),
    -- NeogitChangeUnmerged(),

    --SIGNS FOR LINE HIGHLIGHTING CURRENT CONTEXT
    --NeogitHunkHeaderHighlight(),
    --NeogitDiffContextHighlight(),
    --NeogitDiffAddHighlight   (),
    --NeogitDiffDeleteHighlight(),
    --NeogitDiffHeaderHighlight(),
    --NeogitHunkHeaderCursor   (),
    --NeogitDiffContextCursor  (),
    --NeogitDiffAddCursor      (),
    --NeogitDiffDeleteCursor   (),
    --NeogitDiffHeaderCursor   (),

    -- COMMIT BUFFER
    NeogitFilePath(colors.purple_fg), -- Applied to filepath
    NeogitCommitViewHeader(colors.blue2_fg), -- Applied to header of Commit View

    -- LOG VIEW BUFFER
    NeogitGraphAuthor(colors.purple_fg), --  Applied to the commit's author in graph view
    NeogitGraphBlack(colors.yellow_fg), --Used when --colors is enabled for graph
    -- NeogitGraphBlackBold    (),
    NeogitGraphRed(colors.purple_fg),
    -- NeogitGraphRedBold      (),
    -- NeogitGraphGreen        (),
    -- NeogitGraphGreenBold    (),
    -- NeogitGraphYellow       (),
    -- NeogitGraphYellowBold   (),
    -- NeogitGraphBlue         (),
    -- NeogitGraphBlueBold     (),
    -- NeogitGraphPurple       (),
    -- NeogitGraphPurpleBold   (),
    -- NeogitGraphCyan         (),
    -- NeogitGraphCyanBold     (),
    -- NeogitGraphWhite        (),
    -- NeogitGraphWhiteBold    (),
    -- NeogitGraphGray         (),
    -- NeogitGraphBoldGray     (),
    -- NeogitGraphOrange       (),
    --                         (),
    -- NeogitSignatureGood     (),   For highlighting the commit hash when
    -- NeogitSignatureBad      (),   --show-signature is passed
    -- NeogitSignatureMissing(),
    -- NeogitSignatureNone(),
    -- NeogitSignatureGoodUnknown(),
    -- NeogitSignatureGoodExpired(),
    -- NeogitSignatureGoodExpiredKey(),
    -- NeogitSignatureGoodRevokedKey(),
    --
    -- POPUPS
    NeogitPopupSectionTitle(colors.purple_fg), -- Applied to all section headers
    NeogitPopupBranchName(colors.surf_green_fg), --  Applied to the current branch name for emphasis
    -- NeogitPopupBold           (), --  Applied on "@{upstream}" and "pushRemote" for
    --                           (), --  emphasis (but less emphasis than BranchName)
    --                           (), --
    NeogitPopupSwitchKey(colors.surf_green_fg), --  Applied to the key that will toggle switch
    -- NeogitPopupSwitchEnabled  (), --  Applied to the flag if enabled
    -- NeogitPopupSwitchDisabled (), --  Applied to the flag if disabled
    --                           (), --
    NeogitPopupOptionKey(colors.surf_green_fg), --  Applied to the key that will trigger option
    NeogitPopupOptionEnabled(colors.blue1_fg), --  Applied if option is set
    NeogitPopupOptionDisabled(colors.grey_fg), --  Applied if option has no value
    --                           (), --
    NeogitPopupConfigKey(colors.surf_green_fg), --  Applied to the key that triggers config
    -- NeogitPopupConfigEnabled  (), --  Applied to enabled config value
    -- NeogitPopupConfigDisabled (), --  Applied to config without value
    --                           (), --
    NeogitPopupActionKey(colors.yellow_fg), --  Applied to key that triggers function
    NeogitPopupActionDisabled(colors.grey_fg), --  Applied to key when function is unimplemented
    --                           (), --
    -- COMMAND HISTORY BUFFER    (), --
    -- NeogitCommandText         (), --  Git command that was run
    -- NeogitCommandTime         (), --  Execution time
    -- NeogitCommandCodeNormal   (), --  Applied to a successful command's exit status (0)
    -- NeogitCommandCodeError    (), --  When command exits with non-zero status
    --                           (), --
    -- COMMIT SELECT BUFFER      (), --
    NeogitFloatHeader(colors.yellow_fg), --  Foreground/Background for header text at top of win
    NeogitFloatHeaderHighlight(colors.blue2_fg), --  Emphasized text in header
  }
end)

return spec
