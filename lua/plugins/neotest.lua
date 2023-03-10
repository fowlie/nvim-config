return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-go",
    },
    config = function()
      -- get neotest namespace (api call creates or returns namespace)
      local neotest_ns = vim.api.nvim_create_namespace("neotest")
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)

      -- custom commands here
      -- Test
      vim.api.nvim_create_user_command("Test", function(_)
        require("neotest").run.run()
      end, { desc = "Test the nearest function" })

      -- TestOutput
      vim.api.nvim_create_user_command("TestOutput", function(_)
        require("neotest").output.open({ enter = true })
      end, { desc = "Test output panel" })

      -- TestSummary
      vim.api.nvim_create_user_command("TestSummary", function(_)
        require("neotest").summary.toggle()
      end, { desc = "Toggle test summary" })

      require("neotest").setup({
        -- your neotest config here
        adapters = {
          require("neotest-go"),
        },
      })
    end,
  },
}
