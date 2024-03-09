local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colorscheme
Plug('rose-pine/neovim')
Plug('projekt0n/github-nvim-theme')

-- Lsp
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')

-- Autocompletion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')

-- Ai
Plug('David-Kunz/gen.nvim')

-- Formatter
Plug('mhartington/formatter.nvim')

-- Pretty stuff
Plug('nvim-lualine/lualine.nvim')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('nvim-tree/nvim-web-devicons')

-- Utility
Plug('nvim-lua/plenary.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.5' })
Plug('nvim-telescope/telescope-ui-select.nvim')
Plug('ThePrimeagen/harpoon')
Plug('stevearc/oil.nvim')
Plug('cohama/lexima.vim')
Plug('michaelb/sniprun', { ['do'] = 'sh install.sh' })

-- Documents
Plug('nvim-orgmode/orgmode')
Plug('dhruvasagar/vim-table-mode')

vim.call('plug#end')

require('krishna')
