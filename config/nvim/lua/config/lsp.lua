require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "html", "cssls", "tsserver" },
})

require("lspconfig").pyright.setup({})
require("lspconfig").lua_ls.setup({})
-- require("lspconfig").emmet_ls.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").html.setup({})
require("lspconfig").tsserver.setup({})

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- null_ls.builtins.formatting.stylua,
		-- null_ls.builtins.formatting.prettier,
		-- null_ls.builtins.formatting.black,
		-- null_ls.builtins.completion.spell,
	},
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*",
--     callback = function()
--         -- You can include conditions here to only format certain file types
--         -- For example: if vim.bo.filetype == "javascript" then
--         vim.lsp.buf.format({ timeout_ms = 10000 })
--         -- end
--     end,
-- })
