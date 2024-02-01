-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install Lazy package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system { 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable' }
end
vim.opt.rtp:prepend(lazypath)

require('options')
require('lazy').setup('plugins')

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Scroll buffer using Ctrl arrows
vim.keymap.set('n', '<C-Up>', '<C-y>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', '<C-e>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', 'zh', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', 'zl', { noremap = true, silent = true })

-- Scroll buffer using Ctrl hjkl
vim.keymap.set('n', '<C-k>', '', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-e>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', 'zh', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', 'zl', { noremap = true, silent = true })

-- Quickly select the whole line
vim.keymap.set('n', 'vv', 'V', { noremap = true, silent = true })

-- Move selected line up or down
vim.keymap.set('n', '<A-j>', ':move +1<enter>')
vim.keymap.set('n', '<A-k>', ':move -2<enter>')

-- Move multiple lines up or down
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

