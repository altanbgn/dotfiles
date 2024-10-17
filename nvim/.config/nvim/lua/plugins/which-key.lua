return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        preset = "modern",
        icons = { rules = false },
        delay = 1500
    },
    init = function()
        local wk = require("which-key")
        local harpoon = require("harpoon")
        local persistence = require("persistence")

        wk.add({
            -- Default group
            { "<leader>Y",  desc = "Copy line" },
            { "<leader>y",  desc = "Copy" },
            { "<leader>d",  desc = "Cut" },
            { "<leader>s",  desc = "String replace" },
            { "gd",         desc = "Go to definition" },
            { "K",          desc = "Hover (LSP)" },
            { "H",          desc = "Signature help" },
            { "<C-n>",      function() harpoon:list():prev() end,                        desc = "Prev (Harpoon)" },
            { "<C-e>",      function() harpoon:list():next() end,                        desc = "Next (Harpoon)" },
            -- Help
            { "<leader>h",  group = "Help" },
            { "<leader>ht", "<cmd>Telescope help_tags<cr>",                              desc = "Help tags (Telescope)" },
            { "<leader>hs", desc = "Signature (Telescope)" },
            { "<leader>ha", function() harpoon:list():add() end,                         desc = "Add to list (Harpoon)" },
            { "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "View list (Harpoon)" },
            -- R group
            { "<leader>r",  group = "R group" },
            { "<leader>rn", desc = "Rename (LSP)" },
            { "<leader>rf", desc = "References (LSP)" },
            -- Code group
            { "<leader>c",  group = "Code" },
            { "<leader>ca", group = "Code action (LSP)" },
            { "<leader>cf", group = "Format (LSP)" },
            { "<leader>ch", group = "Clear highlight" },
            -- File group
            { "<leader>f",  group = "File" },
            { "<leader>fe", desc = "File explorer" },
            { "<leader>fc", "<cmd>e ~/.config/nvim<cr>", desc = "Neovim Config" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>",                             desc = "Find files (Telescope)" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>",                               desc = "Recent files (Telescope)" },
            { "<leader>fn", desc = "New file" },
            { "<leader>fx", desc = "File permission (chmod +x)" },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").grep_string({ search = vim.fn.input("❰❱ Search » ") })
                end,
                desc = "Grep string (Telescope)"
            },
            -- Git group
            { "<leader>g",   group = "Git" },
            { "<leader>gf",  "<cmd>Telescope git_files<cr>",                               desc = "Git files (Telescope)" },
            { "<leader>ga",  "<cmd>Git add .<cr>",                                         desc = "Git add . (Fugitive)" },
            { "<leader>gs",  "<cmd>Git<cr>",                                               desc = "Git status (Fugitive)" },
            { "<leader>gc",  "<cmd>Git commit<cr>",                                        desc = "Git commit (Fugitive)" },
            { "<leader>gd",  "<cmd>Git diff<cr>",                                          desc = "Git diff (Fugitive)" },
            { "<leader>gb",  "<cmd>Git blame<cr>",                                         desc = "Git blame (Fugitive)" },
            { "<leader>gl",  "<cmd>Git log<cr>",                                           desc = "Git log (Fugitive)" },
            { "<leader>gpl", "<cmd>Git pull<cr>",                                          desc = "Git pull (Fugitive)" },
            { "<leader>gps", "<cmd>Git push<cr>",                                          desc = "Git push (Fugitive)" },
            { "<leader>gpo", "<cmd>Git push -u origin<cr>",                                desc = "Git push to origin (Fugitive)" },
            -- Buffers group
            { "<leader>b",   group = "Buffers" },
            { "<leader>bb",  "<cmd>Telescope buffers<cr>",                                 desc = "Buffers (Telescope)" },
            -- Trouble
            { "<leader>x",   group = "Trouble" },
            { "<leader>xx",  "<cmd>Trouble diagnostics toggle<cr>",                        desc = "Diagnostics (Trouble)" },
            { "<leader>xX",  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",           desc = "Buffer Diagnostics (Trouble)" },
            { "<leader>cs",  "<cmd>Trouble symbols toggle focus=false<cr>",                desc = "Symbols (Trouble)" },
            { "<leader>cl",  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)" },
            { "<leader>xl",  "<cmd>Trouble loclist toggle<cr>",                            desc = "Location List (Trouble)" },
            { "<leader>xq",  "<cmd>Trouble qflist toggle<cr>",                             desc = "Quickfix List (Trouble)" },
            -- Undotree
            { "<leader>u",   group = "Undotree" },
            { "<leader>ut",  "<cmd>UndotreeToggle<cr>",                                    desc = "Toggle undotree" },
            { "<leader>uf",  "<cmd>UndotreeFocus<cr>",                                     desc = "Focus undotree" },
            -- Session
            { "<leader>q", group = "Persistence" },
            { "<leader>ql", function() persistence.load({ last = true }) end, desc = "Last session (Persistence)" },
            { "<leader>qs", function() persistence.select() end, desc = "Select session (Persistence)" },
            { "<leader>qd", function() persistence.stop() end, desc = "Stop session (Persistence)" },
            -- ETC
            { "<leader>mir", "<cmd>CellularAutomaton make_it_rain<cr>",                    desc = "Make it rain" },
            { "<leader>gof", "<cmd>CellularAutomaton game_of_life<cr>",                    desc = "Game of life" },
            { "<leader>zz",  "<cmd>ZenMode<cr>",                                           desc = "Zen Mode" },
            { "<leader>db",  "<cmd>Alpha<cr>",                                             desc = "Dashboard" },
            { "<leader>hb",  function() wk.show({ global = false }) end,                   desc = "Buffer Local Keymaps (which-key)" },
        })
    end,
}
