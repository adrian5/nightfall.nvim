local M = {}

---@param colors NightfallPalette
---@private
function M.get(colors)
  local Options = require("nightfall").Options
  local active_bg = Options.transparent and colors.none or colors.bg_float
  local inactive_bg = Options.transparent and colors.none or colors.background

  return {
    NeoTreeNormal = { fg = colors.foreground, bg = active_bg },
    NeoTreeNormalNC = { fg = colors.foreground, bg = active_bg },
    NeoTreeExpander = { fg = colors.deep_navy },
    NeoTreeIndentMarker = { fg = colors.deep_navy },
    NeoTreeRootName = { fg = colors.nord_blue, style = { bold = true } },
    NeoTreeSymbolicLinkTarget = { fg = colors.pink },
    NeoTreeModified = { fg = colors.pink },
    NeoTreeGitAdded = { fg = colors.light_cyan },
    NeoTreeGitConflict = { fg = colors.red },
    NeoTreeGitDeleted = { fg = colors.red },
    NeoTreeGitIgnored = { fg = colors.deep_navy },
    NeoTreeGitModified = { fg = colors.pale_yellow },
    NeoTreeGitUnstaged = { fg = colors.red },
    NeoTreeGitUntracked = { fg = colors.violet },
    NeoTreeGitStaged = { fg = colors.light_cyan },
    NeoTreeFloatBorder = { link = "FloatBorder" },
    NeoTreeFloatTitle = { link = "FloatTitle" },
    NeoTreeTitleBar = { fg = colors.black, bg = colors.pink },
    NeoTreeFileNameOpened = { fg = colors.pink },
    NeoTreeDimText = { fg = colors.dark_navy },
    NeoTreeFilterTerm = { fg = colors.light_cyan, style = { bold = true } },
    NeoTreeTabActive = { bg = active_bg, fg = colors.lavender, style = { bold = true } },
    NeoTreeTabInactive = { bg = inactive_bg, fg = colors.deep_navy },
    NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
    NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
    NeoTreeVertSplit = { fg = colors.background, bg = inactive_bg },
    NeoTreeWinSeparator = {
      fg = Options.transparent and colors.dark_navy or colors.dark_blue,
      bg = Options.transparent_background and colors.none or colors.background,
    },
    NeoTreeStatusLineNC = { fg = colors.black, bg = colors.black },
  }
end

return M
