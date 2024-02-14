vim.keymap.set('n', '<Leader>m', '<cmd>lua require("harpoon.mark").add_file()<cr>')
vim.keymap.set('n', '<Leader>h', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
vim.keymap.set('n', '<Leader>1', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>')
vim.keymap.set('n', '<Leader>2', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>')
vim.keymap.set('n', '<Leader>3', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>')
vim.keymap.set('n', '<Leader>4', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>')

