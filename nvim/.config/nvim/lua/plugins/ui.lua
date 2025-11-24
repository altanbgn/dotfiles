return {
  -- SMALL PKGS
  { "lewis6991/gitsigns.nvim",  opts = {} },
  { "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 200
      }
    },
    keys = {
      { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" }
    }
  },
  {
    "norcalli/nvim-colorizer.lua",
    lazy = true,
    keys = {
      { "<leader>ct", "<cmd>ColorizerToggle<cr>", desc = "Toggle Colorizer" }
    },
    config = function()
      require("colorizer").setup({
        -- Boolean | List of usercommands to enable.  See User commands section.
        user_commands = true,    -- Enable all or some usercommands
        user_default_options = {
          names = false,         -- "Name" codes like Blue or red.  Added from `vim.api.nvim_get_color_map()`
          names_opts = {         -- options for mutating/filtering names.
            lowercase = true,    -- name:lower(), highlight `blue` and `red`
            camelcase = true,    -- name, highlight `Blue` and `Red`
            uppercase = true,    -- name:upper(), highlight `BLUE` and `RED`
            strip_digits = true, -- ignore names with digits,
            -- highlight `blue` and `red`, but not `blue3` and `red4`
          },
          -- Expects a table of color name to #RRGGBB value pairs.  # is optional
          -- Example: { cool = "#107dac", ["notcool"] = "ee9240" }
          -- Set to false to disable, for example when setting filetype options
          names_custom = false,  -- Custom names to be highlighted: table|function|false
          RGB = true,            -- #RGB hex codes
          RGBA = true,           -- #RGBA hex codes
          RRGGBB = true,         -- #RRGGBB hex codes
          RRGGBBAA = true,       -- #RRGGBBAA hex codes
          AARRGGBB = true,       -- 0xAARRGGBB hex codes
          rgb_fn = true,         -- CSS rgb() and rgba() functions
          hsl_fn = true,         -- CSS hsl() and hsla() functions
          css = true,            -- Enable all CSS *features*:
          -- names, RGB, RGBA, RRGGBB, RRGGBBAA, AARRGGBB, rgb_fn, hsl_fn
          css_fn = true,         -- Enable all CSS *functions*: rgb_fn, hsl_fn
          -- Tailwind colors.  boolean|'normal'|'lsp'|'both'.  True sets to 'normal'
          tailwind = true,       -- Enable tailwind colors
          tailwind_opts = {      -- Options for highlighting tailwind names
            update_names = true, -- When using tailwind = 'both', update tailwind names from LSP results.  See tailwind section
          },
          -- parsers can contain values used in `user_default_options`
          sass = { enable = true, parsers = { "css" } }, -- Enable sass colors
          xterm = false,                                 -- Enable xterm 256-color codes (#xNN, \e[38;5;NNNm)
          -- Highlighting mode.  'background'|'foreground'|'virtualtext'
          mode = "background",                           -- Set the display mode
          -- Virtualtext character to use
          virtualtext = "■",
          -- Display virtualtext inline with color.  boolean|'before'|'after'.  True sets to 'after'
          virtualtext_inline = false,
          -- Virtualtext highlight mode: 'background'|'foreground'
          virtualtext_mode = "foreground",
          -- update color values even if buffer is not focused
          -- example use: cmp_menu, cmp_docs
          always_update = false,
          -- hooks to invert control of colorizer
          hooks = {
            -- called before line parsing.  Accepts boolean or function that returns boolean
            -- see hooks section below
            disable_line_highlight = false,
          },
        },
      })
    end
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
