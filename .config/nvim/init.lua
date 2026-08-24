-- Options

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Keymaps

vim.keymap.set("n", "<leader>b[", "<cmd>bprev<cr>")
vim.keymap.set("n", "<leader>b]", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set('n', '<Leader>op', '<cmd>Oil<cr>')

-- Commands

vim.api.nvim_create_user_command("Q", "q", {nargs = '?'})
vim.api.nvim_create_user_command("W", "w", {nargs = '?'})


-- vim.pack

vim.pack.add({
    "https://github.com/rose-pine/neovim",
    "https://github.com/stevearc/oil.nvim",
})

require("oil").setup()

-- Colorscheme

vim.cmd.colorscheme("rose-pine")
