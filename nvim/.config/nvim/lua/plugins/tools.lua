return {
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>ga",  "<cmd>Git add .<cr>",          desc = "Git add . (Fugitive)" },
            { "<leader>gs",  "<cmd>Git<cr>",                desc = "Git status (Fugitive)" },
            { "<leader>gc",  "<cmd>Git commit<cr>",         desc = "Git commit (Fugitive)" },
            { "<leader>gd",  "<cmd>Git diff<cr>",           desc = "Git diff (Fugitive)" },
            { "<leader>gb",  "<cmd>Git blame<cr>",          desc = "Git blame (Fugitive)" },
            { "<leader>gl",  "<cmd>Git log<cr>",            desc = "Git log (Fugitive)" },
            { "<leader>gpl", "<cmd>Git pull<cr>",           desc = "Git pull (Fugitive)" },
            { "<leader>gps", "<cmd>Git push<cr>",           desc = "Git push (Fugitive)" },
            { "<leader>gpo", "<cmd>Git push -u origin<cr>", desc = "Git push to origin (Fugitive)" },
        }
    },
    {
        "mbbill/undotree",
        keys = {
            { "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Toggle undotree" },
            { "<leader>uf", "<cmd>UndotreeFocus<cr>",  desc = "Focus undotree" },
        }
    },
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        opts = {},
        keys = {
            { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",                        desc = "Diagnostics (Trouble)" },
            { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",           desc = "Buffer Diagnostics (Trouble)" },
            { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>",                desc = "Symbols (Trouble)" },
            { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)" },
            { "<leader>xl", "<cmd>Trouble loclist toggle<cr>",                            desc = "Location List (Trouble)" },
            { "<leader>xq", "<cmd>Trouble qflist toggle<cr>",                             desc = "Quickfix List (Trouble)" },
        }
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        tag = "0.1.8",
        keys = {
            { "<leader>bb", "<cmd>Telescope buffers<cr>",    desc = "Buffers (Telescope)" },
            { "<leader>gf", "<cmd>Telescope git_files<cr>",  desc = "Git files (Telescope)" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files (Telescope)" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>",   desc = "Recent files (Telescope)" },
            { "<leader>ht", "<cmd>Telescope help_tags<cr>",  desc = "Help tags (Telescope)" },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").grep_string({ search = vim.fn.input("❰❱ Search: ") })
                end,
                desc = "Grep string (Telescope)"
            },
        }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        keys = {
            { "<C-n>",      function() require("harpoon"):list():prev() end, desc = "Prev (Harpoon)" },
            { "<C-e>",      function() require("harpoon"):list():next() end, desc = "Next (Harpoon)" },
            { "<leader>ha", function() require("harpoon"):list():add() end,  desc = "Add to list (Harpoon)" },
            {
                "<leader>he",
                function()
                    require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
                end,
                desc = "View list (Harpoon)"
            },
        }
    },
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = { need = 2 },
        keys = {
            { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Last session (Persistence)" },
            { "<leader>qs", function() require("persistence").select() end,              desc = "Select session (Persistence)" },
            { "<leader>qd", function() require("persistence").stop() end,                desc = "Stop session (Persistence)" },
        }
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = false,
        ft = "markdown",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            workspaces = {
                {
                    name = "Personal",
                    path = "~/Vaults/Personal",
                },
                {
                    name = "Work",
                    path = "~/Vaults/Work"
                }
            }
        },
        keys = {
            { "<leader>on", "<cmd>ObsidianNew<cr>",         desc = "Obsidian New" },
            { "<leader>ot", "<cmd>ObsidianTags<cr>",        desc = "Obsidian Tags" },
            { "<leader>oo", "<cmd>ObsidianOpen<cr>",        desc = "Open in Obsidian" },
            { "<leader>of", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian Quick Switch" },
            { "<leader>ow", "<cmd>ObsidianWorkspace<cr>",   desc = "Obsidian Workspace" },
            { "<leader>os", "<cmd>ObsidianSearch<cr>",      desc = "Obsidian Search" },
            { "<leader>od", "<cmd>ObsidianDailies<cr>",     desc = "Obsidian Dailies" },
            { "<leader>or", "<cmd>ObsidianRename<cr>",      desc = "Obsidian Rename" },
        }
    }
}
