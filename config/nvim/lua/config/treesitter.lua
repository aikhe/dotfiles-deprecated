require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"markdown",
		"lua",
		"vim",
		"vimdoc",
		"c",
		"html",
		"javascript",
		"python",
	},
	indent = { enable = true },
	auto_install = true,
	highlight = {
		enable = true,
		use_languagetree = true,
	},
})
