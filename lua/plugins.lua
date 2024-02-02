return {
    "tpope/vim-fugitive",
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment visual regions/lines
    { "RRethy/vim-illuminate" },

    {
        "fowlie/open-github-repo",
        -- dir = "~/code/open-github-repo",
        ft = "lua",
        config = function()
            require("open-github-repo")
        end,
    },

    {
        "Wansmer/treesj",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesj").setup()
        end,
    },

    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup({ handlers = { gitsigns = true } })
        end,
    },

    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup()
        end,
    },
}
