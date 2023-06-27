vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>pv", ":NvimTreeFocus<CR>")

require("nvim-tree").setup()
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


require"nvim-web-devicons".setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };

  color_icons = true;

  default = true;

  strict = true;

  override_by_filename = {
    [".gitignore"] = {
      icon = "GI",
      color = "#f1502f",
      name = "Gitignore"
    }
  };

  override_by_extension = {
    ["log"] = {
      icon = "EX",
      color = "#81e043",
      name = "Log"
    }
  };
}
