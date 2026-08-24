local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

-- Colorscheme
Plug("rose-pine/neovim")
Plug("projekt0n/github-nvim-theme")
Plug("ellisonleao/gruvbox.nvim")
Plug("AlexvZyl/nordic.nvim", { ["branch"] = "main" })
Plug("olimorris/onedarkpro.nvim")
Plug("catppuccin/nvim", { ["as"] = "catppuccin" })

-- Lsp
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("neovim/nvim-lspconfig")

-- Autocompletion
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("saadparwaiz1/cmp_luasnip")
Plug("hrsh7th/cmp-cmdline")
Plug("L3MON4D3/LuaSnip")

-- Ai
Plug("David-Kunz/gen.nvim")

-- Formatter
Plug("mhartington/formatter.nvim")

-- Pretty stuff
Plug("nvim-lualine/lualine.nvim")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("nvim-tree/nvim-web-devicons")

-- Utility
Plug("nvim-lua/plenary.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("nvim-telescope/telescope.nvim", { ["tag"] = "0.1.8" })
Plug("nvim-telescope/telescope-ui-select.nvim")
Plug("ThePrimeagen/harpoon")
Plug("stevearc/oil.nvim")
Plug("michaelb/sniprun", { ["do"] = "sh install.sh" })
Plug("numToStr/Comment.nvim")
Plug("chaoren/vim-wordmotion")
Plug("windwp/nvim-autopairs")
Plug("HiPhish/rainbow-delimiters.nvim")
Plug("folke/zen-mode.nvim")

-- Documents
Plug("nvim-orgmode/orgmode")
Plug("dhruvasagar/vim-table-mode")
Plug("epwalsh/obsidian.nvim", { ["tag"] = "*" })

vim.call("plug#end")

require("krishna")
