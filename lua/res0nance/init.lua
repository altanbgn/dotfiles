require("res0nance.set")
require("res0nance.remap")

local augroup = vim.api.nvim_create_augroup
local res0nanceGroup = augroup("res0nance", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
  require("plenary.reload").reload_module(name)
end

autocmd("TextYankPost", {
  group = yank_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})

autocmd({"BufWritePre"}, {
  group = res0nanceGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

