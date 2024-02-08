require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "python", "markdown", "markdown_inline", "html", "javascript",
        "typescript", "c", "lua", "vim", "vimdoc",
        "query"
    },
    indent = { enable = true },
    auto_install = true,
    highlight = {
        enable = true,
        use_languagetree = true,
    },
}
