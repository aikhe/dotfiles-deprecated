require("indent_blankline").setup {
    indentLine_enabled = 1,
    filetype_exclude = {
        "help",
        "terminal",
        "lazy",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "nvdash",
        "nvcheatsheet",
        "",
    },
    buftype_exclude = { "terminal" },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
}

vim.api.nvim_create_augroup('IndentBlankLineFix', {})
vim.api.nvim_create_autocmd('WinScrolled', {
    group = 'IndentBlankLineFix',
    callback = function()
        if vim.v.event.all.leftcol ~= 0 then
            vim.cmd('silent! IndentBlanklineRefresh')
        end
    end,
})
