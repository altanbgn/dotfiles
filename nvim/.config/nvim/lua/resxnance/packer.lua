-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Dependant
    use("nvim-lua/plenary.nvim")

    -- Startup
    use("goolord/alpha-nvim")

    use("mbbill/undotree")
    use("nvim-treesitter/nvim-treesitter-context")
    use("eandrju/cellular-automaton.nvim")
    use("nvim-lualine/lualine.nvim")

    -- Org
    use({
        'nvim-orgmode/orgmode',
        config = function()
            -- Setup orgmode
            require('orgmode').setup({
                org_agenda_files = '~/Personal/.orgfiles/**/*',
                org_default_notes_file = '~/Personal/.orgfiles/refile.org',
            })
        end,
    })

    -- AI
    -- use("github/copilot.vim")
    use("Exafunction/codeium.vim")

    -- Indent lines and indicators
    use({
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    })

    -- Colorscheme
    use({ "rose-pine/neovim", as = "rose-pine" })

    -- Git
    use("tpope/vim-fugitive")
    use("lewis6991/gitsigns.nvim")

    -- Zen mode
    use("folke/zen-mode.nvim")

    -- Utility
    use({
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
    })
    use("nvim-tree/nvim-web-devicons")
    use("folke/trouble.nvim")
    use("numToStr/Comment.nvim")
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2"
    })

    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end
    })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },

            -- Autocompletion
            {
                "hrsh7th/nvim-cmp",
                branch = "main",
                commit = "7e348da6e5085ac447144a2ef4b637220ba27209"
            },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        }
    })
end)
