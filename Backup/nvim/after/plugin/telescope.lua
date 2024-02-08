require("telescope").load_extension('harpoon')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Gerp > ") });
end)
vim.keymap.set('n', '<leader>pb', function()
    builtin.buffers({ sort_mru = true, ignore_current_buffer = true });
end)
