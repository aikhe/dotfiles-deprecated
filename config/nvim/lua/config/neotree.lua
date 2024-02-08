vim.keymap.set('n', '<leader>f', "<cmd>Neotree<CR>")
vim.keymap.set('n', '<leader>c', "<cmd>Neotree close<CR>")

require("neo-tree").setup({
    window = {
        width = 25,
    },

    filesystem = {
        hijack_netrw_behavior = "disabled",
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        },
    },

    default_component_configs = {
        container = {
            enable_character_fade = false
        },
    },
})

vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
