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

vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.lsp.foldexpr()"

-- 파일 열었을 때 전부 펼쳐둠
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.foldcolumn = "1"

-- Keymaps

vim.keymap.set("n", "<leader>b[", "<cmd>bprev<cr>")
vim.keymap.set("n", "<leader>b]", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Commands

vim.api.nvim_create_user_command("Q", "q", {nargs = '?'})
vim.api.nvim_create_user_command("W", "w", {nargs = '?'})


-- vim.pack

vim.pack.add({
    "https://github.com/rose-pine/neovim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/stevearc/conform.nvim",
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range("1.*"),
    },
    "https://github.com/windwp/nvim-autopairs",
    {
        src = 'https://github.com/nvim-mini/mini.files',
        version = 'stable'
    },
    "https://github.com/nvim-lua/plenary.nvim",
    {
        src = "https://github.com/ThePrimeagen/harpoon",
        version = "harpoon2"
    },
    "https://github.com/nvim-mini/mini.statusline",
})

local harpoon = require("harpoon")
harpoon:setup()
require("mini.statusline").setup()
require("mini.files").setup()
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "gopls",
    },
})
require("conform").setup({
    formatters_by_ft = {
        go = { "gofmt" },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback"
    }
})
require("blink.cmp").setup({
    keymap = {
        preset = "enter",
    },

    sources = {
        default = { "lsp", "path", "buffer" },
    },
})
require("nvim-autopairs").setup()

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
            buffer = event.buf,
            desc = "Go to definition",
        })
    end,
})


-- vim.keymap.set('n', '<Leader>op', '<cmd>lua MiniFiles.open()<cr>')
vim.keymap.set('n', '<Leader>op', function() MiniFiles.open() end)

-- vim.keymap.set('n', '<Leader>m', '<cmd>lua require("harpoon.mark").add_file()<cr>')
-- vim.keymap.set('n', '<Leader>h', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
-- vim.keymap.set('n', '<Leader>1', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>')
-- vim.keymap.set('n', '<Leader>2', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>')
-- vim.keymap.set('n', '<Leader>3', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>')
-- vim.keymap.set('n', '<Leader>4', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>')

vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<Leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<Leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<Leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<Leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<Leader>4", function() harpoon:list():select(4) end)

-- Colorscheme

vim.cmd.colorscheme("rose-pine")
