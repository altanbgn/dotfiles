return {
    -- COLORSCHEME
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            variant = "main",  -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
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
    -- LUALINE
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            icons_enabled = true,
            theme = "rose-pine"
        }
    },
}
