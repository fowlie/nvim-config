return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if its your main colorscheme!
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ref https://github.som/projekt0n/github-nvim-theme#configuration
        -- rlin/
        options = {
          transparent = true,
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
      })

      vim.cmd("colorscheme github_dark")
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        -- for stages that change opacity this is treated as the highlight behind the window.
        -- set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
        background_colour = "#FFFFFF",
      })
    end,
  },
}
