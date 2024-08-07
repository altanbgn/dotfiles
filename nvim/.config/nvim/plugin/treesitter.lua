require("nvim-treesitter.configs").setup {
  sync_install = false,
  auto_install = true,
  indent = { enable = true },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "markdown" },
  },
  ignore_install = { "org" },
  ensure_installed = {
    "bash",
    "comment",
    "c",
    "c_sharp",
    "cmake",
    "cpp",
    "css",
    "dockerfile",
    "dot",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "graphql",
    "gomod",
    "gosum",
    "gowork",
    "html",
    "http",
    "javascript",
    "json",
    "json5",
    "lua",
    "meson",
    "prisma",
    "python",
    "regex",
    "rust",
    "sql",
    "svelte",
    "typescript",
    "yaml",
  },
}
