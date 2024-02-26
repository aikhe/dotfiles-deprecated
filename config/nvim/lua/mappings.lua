vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', '<Cmd>Ex<CR>', { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "J", "mzJ`z")

-- Convert HTML comment shortcut
vim.fn.setreg('h', '_i<!-- \27$a -->\27j', 'c')
vim.fn.setreg('j', '_v4ld\27$v3hd\27j', 'c')

-- Convert C-style comment shortcut
vim.fn.setreg('c', "_i/* \27$a */\27j", 'c')
vim.fn.setreg('v', "_v2ld\27$v2hd\27j", 'c')
