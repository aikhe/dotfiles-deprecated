vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', '<Cmd>Ex<CR>', {silent = true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
                                                                        vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "J", "mzJ`z")
