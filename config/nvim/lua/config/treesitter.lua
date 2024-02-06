require("nvim-treesitter.configs").setup({
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
        "python", "markdown", "lua", "vim", 
        "vimdoc", "query", "c", "html"
    },
    indent = { enable = true },  
    auto_install = true,
    highlight = {
        enable = true,
        use_languagetree = true
    },
})
