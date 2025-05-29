return {
    -- COLORSCHEME
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            variant = "moon",      -- auto, main, moon, or dawn
            dark_variant = "moon", -- main, moon, or dawn
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
        }
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            icons_enabled = true,
            theme = "rosepine"
        }
    },
}
