return {
    "HiPhish/rainbow-delimiters.nvim",
    config = function ()
        local config = require('rainbow-delimiters.setup').setup({
            highlight = {
                'RainbowDelimiterRed',
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
            }
        })
    end
}
