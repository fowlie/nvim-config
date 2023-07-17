return {
  -- Override LSP settings for gopls
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
}
