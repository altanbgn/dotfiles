-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use("lukas-reineke/indent-blankline.nvim")
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context")
  use("tpope/vim-fugitive")
  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")

  -- Colorscheme
  use("ellisonleao/gruvbox.nvim")

  -- Dependant
  use("nvim-lua/plenary.nvim")

  -- Utility
  use("nvim-tree/nvim-web-devicons")
  use({"nvim-telescope/telescope.nvim", tag = "0.1.2"})
  use("folke/trouble.nvim")
  use({"numToStr/Comment.nvim", config = function()
    require("Comment").setup()
  end})

  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "antosha417/nvim-lsp-file-operations"
    }
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end
  })

  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    }
  })
end)
