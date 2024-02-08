local colors = {
    cyan = '#41a6b5',
    green = '#7eb541',
    yellow = '#b58641',
    red = '#b54156',
    black1 = '#43435e',
    black2 = '#242433',
    black3 = '#2d2d40',
    gray1 = '#a8afd4',
    gray2 = '#eeeeee',
    transparent = '#121219',
}

local Lukies_tokyo_night = {
    normal = {
        a = { fg = colors.transparent, bg = colors.black1, gui = 'bold' },
        b = { fg = 'NONE', bg = colors.black2 },
        c = { fg = 'NONE', bg = 'NONE' },
        x = { fg = 'NONE', bg = 'NONE' },
        y = { fg = colors.gray2, bg = colors.black2, gui = 'bold' },
        z = { fg = 'NONE', bg = colors.black2 },
    },
    insert = {
        a = { fg = colors.transparent, bg = colors.cyan, gui = 'bold' },
        b = { fg = 'NONE', bg = colors.black2 },
        c = { fg = 'NONE', bg = 'NONE' },
        x = { fg = 'NONE', bg = 'NONE' },
        y = { fg = colors.gray2, bg = colors.black2, gui = 'bold' },
        z = { fg = 'NONE', bg = colors.black2 },
    },
    visual = {
        a = { fg = colors.transparent, bg = colors.green, gui = 'bold' },
        b = { fg = 'NONE', bg = colors.black2 },
        c = { fg = 'NONE', bg = 'NONE' },
        x = { fg = 'NONE', bg = 'NONE' },
        y = { fg = colors.gray2, bg = colors.black2, gui = 'bold' },
        z = { fg = 'NONE', bg = colors.black2 },
    },
    replace = {
        a = { fg = colors.transparent, bg = colors.red, gui = 'bold' },
        b = { fg = 'NONE', bg = colors.black2 },
        c = { fg = 'NONE', bg = 'NONE' },
        x = { fg = 'NONE', bg = 'NONE' },
        y = { fg = colors.gray2, bg = colors.black2, gui = 'bold' },
        z = { fg = 'NONE', bg = colors.black2 },
    },
    command = {
        a = { fg = colors.transparent, bg = colors.yellow, gui = 'bold' },
        b = { fg = 'NONE', bg = colors.black2 },
        c = { fg = 'NONE', bg = 'NONE' },
        x = { fg = 'NONE', bg = 'NONE' },
        y = { fg = colors.gray2, bg = colors.black2, gui = 'bold' },
        z = { fg = 'NONE', bg = colors.black2 },
    },
    inactive = {
        a = { fg = colors.transparent, bg = colors.black1, gui = 'bold' },
        b = { fg = 'NONE', bg = colors.black2 },
        c = { fg = 'NONE', bg = 'NONE' },
        x = { fg = 'NONE', bg = 'NONE' },
        y = { fg = colors.gray2, bg = colors.black2, gui = 'bold' },
        z = { fg = 'NONE', bg = colors.black2 },
    },
}

local devicons = require('nvim-web-devicons')

local function get_file_icon()
    local icon, icon_highlight = devicons.get_icon(vim.fn.expand('%:t'), vim.fn.expand('%:e'))
    return icon, icon_highlight
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = Lukies_tokyo_night,
        component_separators = '',
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {
            {
                'mode',
                separator = { fg = colors.gray1, left = '', right = '', },
                right_padding = 2
            }
        },
        lualine_b = {
            {
                function()
                    local icon, icon_highlight = get_file_icon()
                    local filename = vim.fn.expand('%:t')
                    return ' ' .. icon .. '  ' .. filename .. ' ', icon_highlight
                end,
                color = { fg = colors.gray1, bg = colors.black3 },
                separator = { right = '' }
            },
            {
                function()
                    local current_directory = vim.fn.expand('%:p:h:t')
                    return current_directory ~= '' and current_directory .. ' ' or '[No Name]'
                end,
                icon = ' 󰉖 ',
                right_padding = 4,
                -- separator = { right = '' },
            },
        },
        lualine_c = { 'diagnostics' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            {
                function()
                    local total_lines = vim.fn.line('$')
                    local current_line = vim.fn.line('.')
                    local current_col = vim.fn.col('.')
                    return string.format("%d/%d : %d ", current_line, total_lines, current_col)
                end,
                icon = ' 󰉢',
                -- separator = { left = '' }
                -- separator = '❬',
            },
            -- { "datetime",
            -- style = "%d/%m/%y",
            -- }
        },
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
