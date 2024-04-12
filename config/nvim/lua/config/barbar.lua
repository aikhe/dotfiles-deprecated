-- KEYMAPS:
local map = vim.api.nvim_set_keymap
require("config.neotree")
local opts = { noremap = true, silent = true }
-- Move to previous/next
map("n", "<A-p>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-n>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-P>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A-N>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/Unpin
map("n", "<A-G>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
map("n", "<A-C>", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)
-- Magic buffer-picking mode
map("n", "<C-P>", "<Cmd>BufferPick<CR>", opts)
-- Sake of simplicity
map("n", "<A-E>", "<Cmd>BarbarEnable<CR>", opts)
map("n", "<A-D>", "<Cmd>BarbarDisable<CR>", opts)

-- OPTIONS:
vim.g.barbar_auto_setup = false
require("barbar").setup({
	animation = false,
	auto_hide = false,
	tabpages = false,
	clickable = false,
	-- Excludes buffers from the tabline
	exclude_ft = {},
	exclude_name = {},
	icons = {
		filetype = { enabled = true },
		button = "",
		modified = {
			button = "",
		},
		pinned = { button = "", filename = true },
		current = {
			separator = {
				left = "",
			},
		},
		inactive = {
			separator = {
				left = "",
			},
		},
	},
	insert_at_end = true,
	maximum_padding = 4,
	maximum_length = 30,
	semantic_letters = true,
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
	no_name_title = nil,
	-- Seperate sidebar from tablibe
	sidebar_filetypes = {
		undotree = {
			text = "undotree",
		},
		["neo-tree"] = {
			event = "BufWipeout",
		},
	},
})

-- HIGHLIGHTING:
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = vim.schedule_wrap(function()
		vim.cmd("hi BufferTabpageFill guibg=NONE")

		-- vim.cmd("hi BufferInactive guibg=NONE")
		-- vim.cmd("hi BufferInactive guifg=NONE")
		-- vim.cmd("hi BufferInactiveSign guifg=#565f89")
		-- vim.cmd("hi BufferInactiveSign guibg=NONE")
		-- vim.cmd("hi BufferInactiveWARN guibg=NONE")
		-- vim.cmd("hi BufferInactiveMod guifg=#e0af68")
		-- vim.cmd("hi BufferInactiveMod guibg=NONE")

		-- vim.cmd("hi BufferCurrent guibg=#242433")
		-- vim.cmd("hi BufferCurrent guifg=#eeeeee")
		-- vim.cmd("hi BufferCurrentSign guifg=#eeeeee")
		-- vim.cmd("hi BufferCurrentSignRight guifg=#eeeeee")
		-- vim.cmd("hi BufferCurrentSign guibg=NONE")
		-- vim.cmd("hi BufferCurrentWARN guibg=NONE")
		-- vim.cmd("hi BufferCurrentHINT guibg=NONE")
		-- vim.cmd("hi BufferCurrentMod guifg=#e0af68")
		-- vim.cmd("hi BufferCurrentIcon guifg=#41a6b5")

		-- vim.cmd("hi BufferVisible guifg=#eeeeee")
		-- vim.cmd("hi BufferVisibleSign guifg=#eeeeee")
	end),
	group = vim.api.nvim_create_augroup("foo", {}),
})
