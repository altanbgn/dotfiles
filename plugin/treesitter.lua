require"nvim-treesitter.configs".setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "c",
    "c_sharp",
    "cmake",
    "comment",
    "cpp",
    "css",
    "dart",
    "dockerfile",
    "dot",
    "fortran",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "html",
    "http",
    "java",
    "javascript",
    "json",
    "json5",
    "lua",
    "luadoc",
    "objc",
    "prisma",
    "ruby",
    "rust",
    "regex",
    "scss",
    "sql",
    "svelte",
    "swift",
    "tsx",
    "vue",
    "yaml"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  indent = {
    enable = true
  },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
