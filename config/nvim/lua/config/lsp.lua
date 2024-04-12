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
	ensure_installed = { "pyright", "html", "cssls", "tailwindcss", "tsserver" },
})

require("lspconfig").pyright.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").tailwindcss.setup({})
require("lspconfig").html.setup({})
require("lspconfig").tsserver.setup({})

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- null_ls.builtins.formatting.prettier,
	},
})
