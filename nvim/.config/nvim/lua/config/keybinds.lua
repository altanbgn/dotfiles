vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "N", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever (Paste something without copying the selected visual)
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste without copying" })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>fn", vim.cmd.enew, { desc = "New file" })
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "File Explorer" })
vim.keymap.set("n", "<leader>fx", "<cmd>!chmod +x %<cr>", { desc = "File Permission (chmod +x)", silent = true })
vim.keymap.set("n", "<leader>fc", "<cmd>e ~/.config/nvim<cr>", { desc = "Lazy config", silent = true })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], { desc = "String replace" })
vim.keymap.set("n", "<leader>ch", vim.cmd.nohl, { desc = "Clear search highlight" })

vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev W1 w!
    cnoreabbrev w1 w!
    cnoreabbrev Q! q!
    cnoreabbrev Q1 q!
    cnoreabbrev q1 q!
    cnoreabbrev Qa! qa!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wa wa
    cnoreabbrev Wq wq
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev wq1 wq!
    cnoreabbrev Wq1 wq!
    cnoreabbrev wQ1 wq!
    cnoreabbrev WQ1 wq!
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qa qa
    cnoreabbrev Qall qall
]])
