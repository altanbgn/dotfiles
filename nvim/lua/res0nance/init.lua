require("res0nance.settings")
require("res0nance.keybinds")
require("res0nance.packer")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local res0nanceGroup = augroup("res0nance", {})
local yankGroup = augroup("HighlightYank", {})
local netrwGroup = augroup("NetrwCommands", { clear = true })

function R(name)
  require("plenary.reload").reload_module(name)
end

autocmd("BufWritePre", {
  group = res0nanceGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

autocmd("TextYankPost", {
  group = yankGroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})

autocmd("filetype", {
  group = netrwGroup,
  pattern = "netrw",
  desc = "Keybinds for netrw",
  callback = function()
    local bufmap = function(lhs, rhs)
      local opts = { buffer = true, remap = true }
      vim.keymap.set("n", lhs, rhs, opts)
    end

    -- Better navigation
    bufmap("h", "-^")
    bufmap("l", "<CR>")
  end
})
