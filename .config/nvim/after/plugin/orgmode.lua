require("orgmode").setup_ts_grammar()

require("orgmode").setup({
	org_startup_folded = "showeverything",
	org_adapt_indentation = false,
	org_agenda_files = { "~/Documents/org/**/*" },
	org_default_notes_file = "~/Documents/org/default_note.org",
	org_custom_exports = {
		s = {
			label = "Export to standalone HTML",
			action = function(exporter)
				local current_file = vim.api.nvim_buf_get_name(0)
				local target = vim.fn.fnamemodify(current_file, ":h") .. "/html/" .. vim.fn.fnamemodify(current_file, ":t:r") .. ".html"
				local command = { "pandoc", current_file, "-so", target }
				local on_success = function(output)
					print("Success!")
					vim.api.nvim_echo({ { table.concat(output, "\n") } }, true, {})
				end
				local on_error = function(err)
					print("Error!")
					vim.api.nvim_echo({ { table.concat(err, "\n"), "ErrorMsg" } }, true, {})
				end
				return exporter(command, target, on_success, on_error)
			end,
		},
	},
})
