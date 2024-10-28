return {
    -- SMALL PKGS
    { "lewis6991/gitsigns.nvim",  opts = {} },
    { "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
    {
        "folke/zen-mode.nvim",
        keys = {
            { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" }
        }
    },
    {
        "norcalli/nvim-colorizer.lua",
        keys = {
            { "<leader>ct", "<cmd>ColorizerToggle<cr>", desc = "Toggle Colorizer" }
        }
    },

    -- =========
    -- DASHBOARD
    -- =========
    {
        "goolord/alpha-nvim",
        keys = {
            { "<leader>db", "<cmd>Alpha<cr>", desc = "Dashboard" },
        },
        init = function()
            local dashboard = require("alpha.themes.dashboard")
            local status_ok, alpha = pcall(require, "alpha")
            if not status_ok then
                return
            end

            local function styled_button(sc, txt, keybind, keybind_opts)
                local d_button = dashboard.button(sc, txt, keybind, keybind_opts)
                d_button.opts.hl = "ModeMsg"
                d_button.opts.hl_shortcut = "ErrorMsg"
                return d_button
            end

            local header = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                " ██▀███  ▓█████   ██████ ▒██   ██▒ ███▄    █  ▄▄▄       ███▄    █  ▄████▄  ▓█████",
                "▓██ ▒ ██▒▓█   ▀ ▒██    ▒ ▒▒ █ █ ▒░ ██ ▀█   █ ▒████▄     ██ ▀█   █ ▒██▀ ▀█  ▓█   ▀",
                "▓██ ░▄█ ▒▒███   ░ ▓██▄   ░░  █   ░▓██  ▀█ ██▒▒██  ▀█▄  ▓██  ▀█ ██▒▒▓█    ▄ ▒███",
                "▒██▀▀█▄  ▒▓█  ▄   ▒   ██▒ ░ █ █ ▒ ▓██▒  ▐▌██▒░██▄▄▄▄██ ▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒▓█  ▄",
                "░██▓ ▒██▒░▒████▒▒██████▒▒▒██▒ ▒██▒▒██░   ▓██░ ▓█   ▓██▒▒██░   ▓██░▒ ▓███▀ ░░▒████▒",
                "░ ▒▓ ░▒▓░░░ ▒░ ░▒ ▒▓▒ ▒ ░▒▒ ░ ░▓ ░░ ▒░   ▒ ▒  ▒▒   ▓▒█░░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░░ ▒░ ░",
                "  ░▒ ░ ▒░ ░ ░  ░░ ░▒  ░ ░░░   ░▒ ░░ ░░   ░ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░  ░  ▒    ░ ░  ░",
                "  ░░   ░    ░   ░  ░  ░   ░    ░     ░   ░ ░   ░   ▒      ░   ░ ░ ░           ░",
                "   ░        ░  ░      ░   ░    ░           ░       ░  ░         ░ ░ ░         ░  ░",
                "                                                                  ░",
                "                            [ resxnance-editor v2.0 ]"
            }

            local buttons = {
                styled_button("SPC q l", " Last session"),
                styled_button("SPC f r", "󱑃 Recent Files"),
                styled_button("SPC f f", "󰈞 Find Files"),
                styled_button("SPC f c", "󰒓 Config"),
                styled_button("U", " Lazy", "<cmd>Lazy<cr>"),
                styled_button("q", " Quit", "<cmd>q!<cr>")
            }

            dashboard.section.header.val = header
            dashboard.section.buttons.val = buttons
            dashboard.section.footer.val = "Embrace the darkness"
            dashboard.section.header.opts.hl = "Title"
            dashboard.opts.opts.noautocmd = true

            alpha.setup(dashboard.opts)

            -- Disable folding in alpha buffer
            vim.cmd("autocmd FileType alpha setlocal nofoldenable")
        end
    },

    -- =========
    -- WHICH KEY
    -- =========
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            preset = "modern",
            delay = 1000,
            debug = false,
            win = {},
            spec = {},
        },
        init = function()
            local wk = require("which-key")

            wk.add({
                -- Default group
                { "<leader>g",  group = "Git" },
                { "<leader>b",  group = "Buffers" },
                { "<leader>x",  group = "Trouble" },
                { "<leader>u",  group = "Undotree" },
                { "<leader>q",  group = "Persistence" },
                { "<leader>h",  group = "Help" },
                { "<leader>r",  group = "R group" },
                { "<leader>c",  group = "Code" },
                { "<leader>f",  group = "File" },

                -- LSP
                --
                -- Key maps in plugin is configured with using buffer and
                -- there is cmp mapping with untraditional code so
                { "gd",         desc = "Go to definition (LSP)" },
                { "K",          desc = "Hover (LSP)" },
                { "H",          desc = "Signature help (LSP)" },
                { "<leader>rn", desc = "Rename (LSP)" },
                { "<leader>rf", desc = "References (LSP)" },
                { "<leader>ca", desc = "Code action (LSP)" },
                { "<leader>cf", desc = "Format (LSP)" },

                -- ETC
                { "<leader>hb", function() wk.show({ global = false }) end, desc = "Buffer Local Keymaps (which-key)" },
            })
        end,
    },
    -- ==========
    -- INTERFACES
    -- ==========
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "Normal",
            icons = {
                DEBUG = "[D]",
                ERROR = "[E]",
                INFO = "[I]",
                TRACE = "[T]",
                WARN = "[W]",
            },
            render = "minimal",
            stages = "static",
            timeout = 3000,
        }
    },
    {
        "folke/noice.nvim",
        enabled = true,
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback - "echasnovski/mini.nvim",
        },
        opts = function(_, opts)
            opts.debug = false
            opts.routes = opts.routes or {}

            table.insert(opts.routes, {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            })

            local focused = true

            vim.api.nvim_create_autocmd("FocusGained", {
                callback = function()
                    focused = true
                end,
            })
            vim.api.nvim_create_autocmd("FocusLost", {
                callback = function()
                    focused = false
                end,
            })

            table.insert(opts.routes, 1, {
                filter = {
                    ["not"] = {
                        event = "lsp",
                        kind = "progress",
                    },
                    cond = function()
                        return not focused
                    end,
                },
                view = "notify_send",
                opts = { stop = false },
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = "markdown",
                callback = function(event)
                    vim.schedule(function()
                        require("noice.text.markdown").keys(event.buf)
                    end)
                end,
            })

            return opts
        end,
    },
    -- ===========
    -- INDENTATION
    -- ===========
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
    -- ========
    -- MARKDOWN
    -- ========
    {
        "OXY2DEV/markview.nvim",
        enabled = true,
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
