require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { { "prettierd", "prettier" } },
	},

	format_on_save = {
		async = true,
		lsp_fallback = true,
		-- timeout_ms = 500,
	},

	vim.keymap.set("n", "<leader>F", function()
		require("conform").format({
			async = true,
			lsp_fallback = true,
		})
		-- vim.lsp.buf.format({ timeout_ms = 10000 })
	end, {}),
})
