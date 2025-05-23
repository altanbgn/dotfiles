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
    -- Default options:
    -- {
    --     "rebelot/kanagawa.nvim",
    --     name = "kanagawa",
    --     opts = {
    --         compile = false,  -- enable compiling the colorscheme
    --         undercurl = true, -- enable undercurls
    --         commentStyle = { italic = true },
    --         functionStyle = {},
    --         keywordStyle = { italic = true },
    --         statementStyle = { bold = true },
    --         typeStyle = {},
    --         transparent = true,    -- do not set background color
    --         dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    --         terminalColors = true, -- define vim.g.terminal_color_{0,17}
    --         theme = "dragon",      -- Load "wave" theme when 'background' option is not set
    --         background = {         -- map the value of 'background' option to a theme
    --             dark = "dragon",   -- try "dragon" !
    --             light = "lotus"
    --         },
    --     }
    -- },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            icons_enabled = true,
            theme = "kanagawa"
        }
    },
}
