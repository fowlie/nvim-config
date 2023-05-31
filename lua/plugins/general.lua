return {
  { "f-person/git-blame.nvim" },
  { "folke/zen-mode.nvim" },
  {
    "projekt0n/github-nvim-theme",
    config = function()
      vim.cmd("colorscheme github_dark_dimmed")
    end,
  },
}
