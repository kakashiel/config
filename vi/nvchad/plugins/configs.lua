local M = {}

-- overriding default plugin configs!
M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "c_sharp",
    "clojure",
    "css",
    "cmake",
    "comment",
    "cpp",
    "cuda",
    "dart",
    "dockerfile",
    "dot",
    "elixir",
    "elm",
    "fish",
    "go",
    "graphql",
    "html",
    "http",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "jsonc",
    "julia",
    "kotlin",
    "latex",
    "ledger",
    "lua",
    "make",
    "markdown",
    "perl",
    "php",
    "python",
    "r",
    "regex",
    "scala",
    "scss",
    "swift",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
}

return M
