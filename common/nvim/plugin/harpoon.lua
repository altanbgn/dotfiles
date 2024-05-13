local harpoon = require("harpoon")

harpoon:setup({})

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-m>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-S-P>", function() harpoon:list():previous() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
