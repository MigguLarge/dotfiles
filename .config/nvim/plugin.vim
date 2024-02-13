call plug#begin()
" Colorscheme
Plug 'sainnhe/sonokai'
Plug 'rose-pine/neovim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'shaunsingh/solarized.nvim'

" Lsp and autocompletion
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" Pretty stuff
Plug 'nvim-lualine/lualine.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Other Plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'ThePrimeagen/harpoon'
Plug 'stevearc/oil.nvim'
call plug#end()
