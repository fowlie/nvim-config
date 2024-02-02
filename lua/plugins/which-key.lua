-- Useful plugin to show you pending keybinds.
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>"] = {
                c = {
                    name = "code",
                    f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format buffer" },
                    j = { "<cmd>lua require('treesj').toggle()<CR>", "Tree-sitter join toggle" },
                },
                g = {
                    name = "git",
                    h = {
                        name = "hunk",
                    },
                    r = { "<cmd>OpenGitHubRepo<CR>", "Open GitHub repo" },
                },
            },
        })
    end,
}
