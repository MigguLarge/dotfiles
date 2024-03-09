require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({
				-- even more opts
			}),
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

require("telescope").load_extension("ui-select")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>bf", builtin.buffers, {})
vim.keymap.set("n", "<leader>t?", builtin.help_tags, {})
