vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local res0nanceFugitive = vim.api.nvim_create_augroup("res0nanceFugitive", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
  group = res0nanceFugitive,
  pattern = "*",
  callback = function()
    if vim.bo.ft ~= "fugitive" then
      return
    end

    local currentBuffer = vim.api.nvim_get_current_buf()
    local opts = { buffer = currentBuffer, remap = false }

    vim.keymap.set("n", "<leader>ps", function()
      vim.cmd.Git("push")
    end, opts)

    vim.keymap.set("n", "<leader>pl", function()
      vim.cmd.Git({ "pull", "--rebase" })
    end, opts)

    vim.keymap.set("n", "<leader>t", ":Git push -u origin", opts);
    vim.keymap.set("n", "<leader>b", ":Git blame", opts);
  end,
})