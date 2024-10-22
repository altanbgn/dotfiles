return {
    -- COLORSCHEME
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            variant = "main",      -- auto, main, moon, or dawn
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
                transparency = false,
            },
        }
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flavour = "mocha",
            term_colors = true,
            transparent_background = false,
            styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = { "bold" },
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },
            integrations = {
                alpha = true,
                cmp = true,
                gitsigns = true,
                harpoon = true,
                indent_blankline = { enabled = true },
                native_lsp = { enabled = true },
                mason = true,
                mini = { enabled = true, indentscope_color = "" },
                noice = true,
                notify = true,
                treesitter = true,
                treesitter_context = true,
                telescope = true,
                lsp_trouble = true,
                which_key = true,
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        }
    },
    -- LUALINE
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            icons_enabled = true,
            theme = "catppuccin"
        }
    },
}
