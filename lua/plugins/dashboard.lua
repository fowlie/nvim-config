return {
  "nvimdev/dashboard-nvim",
  optional = true,
  opts = function(_, opts)
    local projects = {
      action = "edit ~/.config/fish/config.fish",
      desc = " Fish config",
      icon = " ",
      key = "fc",
    }

    projects.key_format = "  %s"

    table.insert(opts.config.center, 3, projects)
  end,
}
