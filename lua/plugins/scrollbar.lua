return {
        "petertriho/nvim-scrollbar",
        config = function()
            -- https://github.com/catppuccin/catppuccin/blob/main/docs/style-guide.md
            local mocha = require("catppuccin.palettes").get_palette("mocha")
            require("scrollbar").setup({
                handle = {
                    color = mocha.crust,
                },
                handlers = { gitsigns = true },
                marks = {
                    Search = { color = mocha.sapphire },
                    Error = { color = mocha.red },
                    Warn = { color = mocha.yellow },
                    Info = { color = mocha.teal },
                    Hint = { color = mocha.rosewater },
                    Misc = { color = mocha.mauve },
                    GitAdd = { text = "▒" }, --U+2592
                    GitChange = { text = "▒" }, --U+2592
                    GitDelete = { text = "▒" }, --U+2592
                },
            })
        end,
    }
