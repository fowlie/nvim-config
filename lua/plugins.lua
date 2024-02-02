return {
    "tpope/vim-fugitive",

    -- "fowlie/open-github-repo",
    {
        dir = "~/code/open-github-repo",
        ft = "lua",
        config = function()
            require("open-github-repo")
        end,
    },

    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",

    {
        "lukas-reineke/indent-blankline.nvim",

        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = "ibl",
        opts = {},
    },

    -- "gc" to comment visual regions/lines
    {"numToStr/Comment.nvim", opts = {}},

    {
        "Wansmer/treesj",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesj").setup()
        end,
    },

    { "RRethy/vim-illuminate" },
    { "m4xshen/autoclose.nvim", config = function () require'autoclose'.setup() end },
}
