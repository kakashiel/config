lvim.plugins = {
  {"Pocco81/AutoSave.nvim"},
  {'karb94/neoscroll.nvim'},

  { --show git blame
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  { --autoclose and autorename html tag
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { --preview markdown in neovim
    "npxbr/glow.nvim",
    ft = {"markdown"}
  },
  { -- Simple session management
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  { -- highlight TODO FIX WARRNING
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "github/copilot.vim"
  },
  -- Auto change color with mac os preference
  {'f-person/auto-dark-mode.nvim'},
  -- COLORSCHEME
  {'EdenEast/nightfox.nvim'},
  {'folke/tokyonight.nvim'},
  {'andersevenrud/nordic.nvim'},
  {'shaunsingh/nord.nvim'},
  {'NTBBloodbath/doom-nvim'},
  {'dracula/vim'},
  {'Mofiqul/dracula.nvim'},
  {'mangeshrex/uwu.vim'},
  {'tiagovla/tokyodark.nvim'},
  {'luisiacc/gruvbox-baby'},
  {'sainnhe/sonokai'},
  {'ishan9299/nvim-solarized-lua'},

}

-- mac see plugins auto-dark-mode
lvim.colorscheme = 'doom-one'
