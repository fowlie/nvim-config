-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Never hide quotes (makes json files easier to edit)
vim.opt.conceallevel = 0

-- Use fish shell
vim.opt.shell = "/home/linuxbrew/.linuxbrew/bin/fish"

-- Do not highlight the entire line you are on
vim.opt.cursorline = false

-- Remind me of good habits
vim.g.gitblame_message_when_not_committed = "oh please, commit this!"

-- Turn off relative numbers by default (confusing during pair programming)
vim.g.lazyvim_relative_numbers = false
