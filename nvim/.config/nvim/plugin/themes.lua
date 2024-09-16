-- =========
-- ROSE-PINE
-- =========
require("rose-pine").setup({
    variant = "moon",      -- auto, main, moon, or dawn
    dark_variant = "moon", -- main, moon, or dawn
    dim_inactive_windows = true,
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
  overrides = { },
  dim_inactive = false,
  transparent_mode = false,
})

vim.opt.background = "dark"

vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("rose-pine")

-- vim.api.nvim_set_hl(0, "Normal", { ctermbg = 0 })
-- vim.api.nvim_set_hl(0, "NormalNC", { ctermbg = 0 })

