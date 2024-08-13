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

vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "Normal", { ctermbg = 0 })
vim.api.nvim_set_hl(0, "NormalNC", { ctermbg = 0 })
