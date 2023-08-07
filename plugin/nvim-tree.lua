vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_banner = 1
vim.g.netrw_winsize = 30

vim.keymap.set("n", "<leader>pv", ":NvimTreeFocus<CR>")

require("nvim-tree").setup()
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
    width = 40,
  },
  renderer = {
    full_name = true,
    group_empty = true,
    special_files = {},
    symlink_destination = false,
    indent_markers = {
      enable = true,
    },
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true
      }
    }
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = { "help" },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  filters = {
    custom = {
      "^.git$",
    },
  },
  actions = {
    change_dir = {
      enable = false,
      restrict_above_cwd = true
    },
    open_file = {
      resize_window = true,
      window_picker = {
        chars = "aoeui"
      }
    },
    remove_file = {
      close_window = true,
    },
  },
  log = {
    enable = false,
    truncate = true,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
      watcher = false,
    },
  },
})
