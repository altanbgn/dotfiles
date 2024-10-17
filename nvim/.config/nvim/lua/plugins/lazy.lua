return {
    -- GIT
    { "tpope/vim-fugitive" },
    { "lewis6991/gitsigns.nvim" },
    -- FOLKE
    { "folke/trouble.nvim", cmd = "Trouble", opts = {} },
    { "folke/zen-mode.nvim" },
    { "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
    -- IDK
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, tag = "0.1.8" },
    { "mbbill/undotree" },
    { "ThePrimeagen/harpoon", branch = "harpoon2" },
    { "eandrju/cellular-automaton.nvim" },
    -- INDENT LINE
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        opts = {
            exclude = {
                filetypes = {
                    "lspinfo",
                    "packer",
                    "checkhealth",
                    "help",
                    "man",
                    "gitcommit",
                    "TelescopePrompt",
                    "TelescopeResults",
                    "Trouble",
                    "dashboard"
                }
            }
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
                transparency = false,
            },
        }
    },
}
