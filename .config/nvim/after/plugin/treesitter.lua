require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "vimdoc", "org", "html", "css", "javascript", "pug", "python" },
	highlight = {
		enable = true,
	},
})
