require('rose-pine').setup({
	disable_italics = true
})

vim.g.sonokai_style = 'shusia'
vim.g.gruvbox_bold = 0
vim.g.gruvbox_contrast_light = 'medium'
vim.opt.termguicolors=true -- Term Gui

-- Set-nvim-background
vim.api.nvim_set_option('background', 'light')

vim.cmd('colorscheme rose-pine-dawn')

-- Make background transparent
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
