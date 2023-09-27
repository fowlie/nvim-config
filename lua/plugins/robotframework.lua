return {
  -- Override LSP settings
  -- See https://github.com/robocorp/robotframework-lsp/blob/master/robotframework-ls/docs/config.md
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      robotframework_ls = {
        settings = {
          robot = {
            pythonpath = "/Users/mats/code/test-automation-suite",
            variables = {
              { "EXECDIR", "/Users/mats/code/test-automation-suite" },
            },
            lint = {
              undefinedKeywords = false,
            },
          },
        },
      },
    },
  },
}
