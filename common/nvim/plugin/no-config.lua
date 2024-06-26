require("gitsigns").setup()
require("Comment").setup()
require("ibl").setup()
require("ibl").overwrite({
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
})

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>tr", "<cmd>TroubleToggle<CR>",
  { silent = true, noremap = true }
)
