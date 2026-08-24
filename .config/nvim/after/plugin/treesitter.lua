require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"org",
		"html",
		"css",
		"javascript",
		"pug",
		"python",
		"markdown",
		"markdown_inline",
		"latex",
	},
	highlight = {
		enable = true,
	},
})
