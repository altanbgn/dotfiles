vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local res0nanceFugitive = vim.api.nvim_create_augroup("res0nanceFugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
  group = res0nanceFugitive,
  pattern = "*",
  callback = function ()
    if vim.bo.ft ~= "fugitive" then
      return
    end

    local bufnr = vim.api.nvim_get_current_buf()
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "<leader>p", function()
      vim.cmd.Git("push")
    end, opts)

    vim.keymap.set("n", "<leader>P", function()
      vim.cmd.Git("pull")
    end, opts)

    vim.keymap.set("n", "<leader>t", ":Git push -u origin", opts);
  end,
})

