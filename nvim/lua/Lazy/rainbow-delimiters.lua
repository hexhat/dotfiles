return {
    url = 'https://github.com/HiPhish/rainbow-delimiters.nvim',
    config = function()
        -- This module contains a number of default definitions
        local rainbow_delimiters = require 'rainbow-delimiters'

        vim.g.rainbow_delimiters = {
            strategy = {
                [''] = rainbow_delimiters.strategy['noop'],
                commonlisp = rainbow_delimiters.strategy['global'],
                racket = rainbow_delimiters.strategy['global'],
                html = rainbow_delimiters.strategy['global'],
            },
            query = {
                [''] = 'rainbow-delimiters',
                lua = 'rainbow-blocks',
            },
            priority = {
                [''] = 110,
                lua = 210,
            },
            highlight = {
                'RainbowDelimiterRed',
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
            },
        }
    end
}
