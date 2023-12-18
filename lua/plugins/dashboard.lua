return {
  "nvimdev/dashboard-nvim",
  optional = true,
  opts = function(_, opts)
    local projects = {
      action = "edit ~/.config/skhd/skhdrc",
      desc = " Skdh config",
      icon = " ",
      key = "y",
    }

    projects.key_format = "  %s"

    table.insert(opts.config.center, 3, projects)
  end,
}
