local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", function()
  builtin.grep_string({ search = vim.fn.input("Search (Grep) > ") })
end)
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
