return {
  -- Override LSP settings
  -- See https://github.com/golang/tools/blob/master/gopls/doc/settings.md
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              buildFlags = { "-tags", "development" },
            },
          },
        },
      },
    },
  },

  -- Override neotest settings
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-go"] = {
          args = { "-tags=development" },
        },
      },
    },
  },
}
