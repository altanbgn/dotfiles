-- Setups
require("gitsigns").setup()
require("Comment").setup()
require("trouble").setup()
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

-- Keymaps
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>tr", "<cmd>Trouble diagnostics<CR>")
vim.keymap.set("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>ct", "<cmd>CodeiumToggle<CR>");
