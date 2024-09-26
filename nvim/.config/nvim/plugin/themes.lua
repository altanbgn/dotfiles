-- =========
-- ROSE-PINE
-- =========
require("rose-pine").setup({
  variant = "main",        -- auto, main, moon, or dawn
  dark_variant = "main",   -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,
  enable = {
    terminal = true,
    legacy_highlights = true,
    migrations = true,
  },
  styles = {
    bold = true,
    italic = true,
    transparency = true,
  },
})

-- =======
-- GRUVBOX
-- =======
require("gruvbox").setup({
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  contrast = "hard", -- "hard" | "soft"
  palette_overrides = {},
  overrides = {
    SignColumn = { bg = "#1d2021" },
    DiagnosticSignError = { fg = "#cc241d", bold = true },
    DiagnosticSignWarn = { fg = "#fabd2f", bold = true },
    DiagnosticSignHint = { fg = "#8ec07c", bold = true },
    DiagnosticSignInfo = { fg = "#458588", bold = true },
  },
  dim_inactive = false,
  transparent_mode = false,
})

-- ========
-- Kanagawa
-- ========
require('kanagawa').setup({
    compile = true,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "dragon",           -- try "dragon" !
        light = "lotus"
    },
})

vim.cmd.colorscheme("rose-pine")

-- vim.opt.background = "dark"
-- vim.cmd.colorscheme("rose-pine")

-- vim.api.nvim_set_hl(0, "Normal", { ctermbg = 0 })
-- vim.api.nvim_set_hl(0, "NormalNC", { ctermbg = 0 })
