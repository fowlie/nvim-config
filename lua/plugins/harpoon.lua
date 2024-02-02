return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():append()
        end, { desc = "Add to Harpoon list" })

        vim.keymap.set("n", "<leader>r", function()
            harpoon:list():remove()
        end, { desc = "Remove from Harpoon list" })

        vim.keymap.set("n", "<leader>h", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Toggle Harpoon quick menu"})

        vim.keymap.set("n", "<C-1>", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set("n", "<C-2>", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set("n", "<C-3>", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set("n", "<C-4>", function()
            harpoon:list():select(4)
        end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>p", function()
            harpoon:list():prev()
        end, { desc = "Previous buffer from Harpoon list" })
        vim.keymap.set("n","<leader>n", function()
            harpoon:list():next()
        end, { desc = "Next buffer from Harpoon list" })
    end,
}
