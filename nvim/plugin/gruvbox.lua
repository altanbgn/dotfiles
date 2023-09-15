require("gruvbox").setup({
  undercurl = false,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = true,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  contrast = "hard", -- "hard" | "soft"
  palette_overrides = {},
  overrides = {},
  dim_inactive = true,
  transparent_mode = true,
})

vim.opt.background = "dark"
vim.cmd("colorscheme gruvbox")
