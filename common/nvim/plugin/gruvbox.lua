vim.cmd.colorscheme("gruvbox-material")

vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_foreground = "material"
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_disable_italic_comment = 0
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_dim_active_windows = 1
vim.g.gruvbox_material_float_style = "dim"

vim.api.nvim_set_hl(0, "Normal", { ctermbg = 0 })
vim.api.nvim_set_hl(0, "NormalNC", { ctermbg = 0 })
