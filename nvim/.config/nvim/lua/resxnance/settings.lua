vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})

vim.g.netrw_banner = 1
vim.g.netrw_sizestyle = "H"

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0

vim.opt.scroll = 5
vim.opt.guicursor = ""

vim.opt.cursorline = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.encoding = "UTF-8"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/tmp/nvim.undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
