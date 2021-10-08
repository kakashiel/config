vim.cmd('source $MYCONF/vi/common/config/settings.vim')
vim.cmd('source $MYCONF/vi/nvim/config/settings.vim')

vim.cmd('source $MYCONF/vi/common/mapping/mapping.vim')
vim.cmd('source $MYCONF/vi/common/load_plug.vim')


-------------------------------------------------------------------------------
--PLUGIN
-- USE PACKER
-------------------------------------------------------------------------------

vim.call('plug#begin', '~/.vim/plugged')
local Plug = vim.fn['plug#']
--COMMON
 Plug 'https://github.com/tpope/vim-surround.git'     -- Shortcut surroung
 Plug 'https://github.com/tpope/vim-commentary.git'   -- intellij: Shortcut commentary
 Plug 'vim-scripts/argtextobj.vim'                    -- intellij: Text-object like motion for arguments
 Plug 'machakann/vim-highlightedyank'                 -- intellij: Make the yanked region apparent!
 Plug 'justinmk/vim-sneak'                            -- s<char><char>
 Plug 'easymotion/vim-easymotion'                     -- Easy motion plug
 Plug('scrooloose/nerdtree', {on = {'NERDTreeToggle', 'NERDTree'}}) --Project manager
 Plug 'tpope/vim-fugitive'                            -- GIT
 Plug 'tpope/vim-rhubarb'                             -- GIT with more command
 Plug 'junegunn/gv.vim'                               -- GIT browse commit
 Plug 'mhinz/vim-signify'                             -- GIT show line modified
 Plug 'psliwka/vim-smoothie'                          -- Scrolling more smooth
 Plug 'junegunn/goyo.vim'                             -- ZEN mode
 Plug 'ludovicchabant/vim-gutentags'                  -- Automate the creation and updating of tags in the background
 Plug 'luochen1990/rainbow'                           -- Rainbow
 Plug 'christoomey/vim-tmux-navigator'                -- Vim/Tmux seamlessly
 -- Plug 'preservim/vimux'                            -- run VimuxRunCommand

--VIM-Plugin I use for neovim
 Plug 'mhinz/vim-startify'                            -- Vim start dashboard
 Plug 'airblade/vim-rooter'                           -- Set vim to root directory
 Plug '907th/vim-auto-save'                           -- Autosave
 Plug 'tpope/vim-dadbod'                              -- DB interface
 Plug 'kristijanhusak/vim-dadbod-ui'                  -- DB client UI
 Plug 'liuchengxu/vim-which-key'
 
 
--VIM TODO: find nvim equivalent
 Plug 'vim-airline/vim-airline'                       -- Good airline
 Plug 'vim-airline/vim-airline-themes'                -- Theme for airline


-- NEOVIM ONLY
 Plug 'kyazdani42/nvim-web-devicons'                  -- Set of icons with lua


 Plug('nvim-treesitter/nvim-treesitter') -- Better syntax
 Plug 'neovim/nvim-lspconfig'                         -- LSP nvim
 Plug 'williamboman/nvim-lsp-installer'               -- Install LSP server
 Plug 'glepnir/lspsaga.nvim'                          -- LSP Popup action
 Plug 'kyazdani42/nvim-tree.lua'                      -- Project manager
 Plug 'romgrk/barbar.nvim'                            -- Tab like any IDE
 Plug 'nvim-lua/popup.nvim'                           -- Telescope
 Plug 'nvim-lua/plenary.nvim'                         -- Telescope
 Plug 'nvim-telescope/telescope.nvim'                 -- Telescope
 Plug 'ThePrimeagen/vim-be-good'                      -- GAME( start with :VimBeGood)

 Plug 'mhartington/oceanic-next'                      -- Theme vim with treesitter

vim.call('plug#end')

-------------------------------------------------------------------------------
--PLUGIN CONFIG
-------------------------------------------------------------------------------
