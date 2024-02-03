-- This file contains plugins with minimal config

return {
    -- A git porcelain using the `:Git` command
    "tpope/vim-fugitive",

    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",

    -- Add visual lines to mark indents
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = "┊" }, -- U+9482
        },
    },

    -- Type `gc` to comment
    { "numToStr/Comment.nvim", opts = {} },

    -- Highlight words
    { "RRethy/vim-illuminate" },

    -- Quickly open a plugins GitHub page
    {
        "fowlie/open-github-repo",
        -- dir = "~/code/open-github-repo",
        ft = "lua",
        config = function()
            require("open-github-repo")
        end,
    },

    -- Toggle Split or Join using Tree-sitter
    {
        "Wansmer/treesj",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesj").setup()
        end,
    },

    -- Automatically insert matching symbols
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup()
        end,
    },

    -- Use colors to indicate mode
    {
        "mawkler/modicator.nvim",
        config = function()
            require("modicator").setup()
        end,
    },

    {
        "karb94/neoscroll.nvim",
        config = function()
            require("neoscroll").setup()
        end,
    },
}
