-- inspired by https://github.com/mawkler/nvim/blob/master/lua/configs/dap.lua
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui", -- UI for nvim-dap
    "theHamsta/nvim-dap-virtual-text", -- Show variable values in virtual text
    "mxsdev/nvim-dap-vscode-js", -- DAP adapter for vs**de-js-debug
    "leoluz/nvim-dap-go", -- Golang
    "jay-babu/mason-nvim-dap.nvim", -- Automatic DAP configuration
    "ofirgall/goto-breakpoints.nvim", -- Jump to next/previous breakpoint
    "williamboman/mason.nvim", -- Manage DAP adapters
  },
  config = function()
    local dap = require("dap")
    local mason_dap = require("mason-nvim-dap")
    local sign_define = vim.fn.sign_define
    local breakpoint = require("goto-breakpoints")

    sign_define("DapBreakpoint", { text = "", texthl = "Error" })
    sign_define("DapBreakpointCondition", { text = "לּ", texthl = "Error" })
    sign_define("DapLogPoint", { text = "", texthl = "Directory" })
    sign_define("DapStopped", { text = "ﰲ", texthl = "TSConstant" })
    sign_define("DapBreakpointRejected", { text = "", texthl = "Error" })

    -- Automatically set up installed DAP adapters
    mason_dap.setup({ automatic_setup = true })
    mason_dap.setup_handlers()

    -- Mappings --
    vim.keymap.set({ "n" }, "<leader>dB", function()
      vim.ui.input({ prompt = "Breakpoint condition: " }, function(condition)
        dap.set_breakpoint(condition)
      end)
    end, { desc = "DAP set conditional breakpoint" })
    vim.keymap.set({ "n" }, "<leader>dc", dap.continue, { desc = "DAP continue" })
    vim.keymap.set({ "n" }, "<leader>ds", dap.step_over, { desc = "DAP step over" })
    vim.keymap.set({ "n" }, "<leader>di", dap.step_into, { desc = "DAP step into" })
    vim.keymap.set({ "n" }, "<leader>do", dap.step_out, { desc = "DAP step out" })
    vim.keymap.set({ "n" }, "<leader>db", dap.toggle_breakpoint, { desc = "DAP toggle breakpoint" })
    vim.keymap.set({ "n" }, "<leader>dr", dap.repl.open, { desc = "DAP open REPL" })
    vim.keymap.set({ "n" }, "<leader>dl", dap.run_last, { desc = "DAP run last session" })
    vim.keymap.set({ "n" }, "<leader>dr", dap.restart, { desc = "DAP restart session" })
    vim.keymap.set({ "n" }, "<leader>dq", dap.terminate, { desc = "DAP terminate session" })

    -- Go to breakpoints
    vim.keymap.set({ "n" }, "]b", breakpoint.next, { desc = "Go to next breakpoint" })
    vim.keymap.set({ "n" }, "[b", breakpoint.prev, { desc = "Go to previous breakpoint" })

    -- DAP virtual text --
    require("nvim-dap-virtual-text").setup()

    -- Loads .vscode/launch.json files if available
    require("dap.ext.vscode").load_launchjs(nil, {
      ["pwa-node"] = { "typescript" },
      ["node"] = { "typescript" },
    })

    -- Golang
    require("dap-go").setup()
  end,
}
