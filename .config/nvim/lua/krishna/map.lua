-- vim
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>e', '<cmd>Ex<cr>')
vim.keymap.set('n', '<Leader>b[', '<cmd>bprev<cr>')
vim.keymap.set('n', '<Leader>b]', '<cmd>bnext<cr>')
vim.keymap.set('n', '<Leader>bd', '<cmd>bdelete<cr>')
vim.keymap.set('i', '<C-C>', '<esc>') -- Now we can use CTRL+C in insert mode instead of esc
vim.keymap.set('n', '<c-d>', '<c-d>zz') -- ⎤ Automatically align view to be cursor at center after down/up half page
vim.keymap.set('n', '<c-u>', '<c-u>zz') -- ⎦ 
