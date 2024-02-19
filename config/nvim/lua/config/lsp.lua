require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { "pyright" },
    require 'lspconfig'.pyright.setup {},
    require 'lspconfig'.lua_ls.setup {},
    require 'lspconfig'.emmet_ls.setup {},
}

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.completion.spell,
    },
})

vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, {})
