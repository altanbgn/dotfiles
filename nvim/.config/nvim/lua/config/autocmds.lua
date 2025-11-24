local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local resxnanceGroup = augroup("resxnance", {})
local yankGroup = augroup("HighlightYank", {})
local netrwGroup = augroup("NetrwCommands", { clear = true })

function R(name)
  require("plenary.reload").reload_module(name)
end

autocmd("BufWritePre", {
  group = resxnanceGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

autocmd("VimEnter", {
  group = resxnanceGroup,
  pattern = "*",
  callback = function()
  end,
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

-- Keybinds for netrw
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
    bufmap("<Left>", "-^")
    bufmap("l", "<CR>")
    bufmap("<Right>", "<CR>")
  end
})
