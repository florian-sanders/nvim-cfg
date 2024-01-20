local map = vim.keymap.set

-- options
vim.opt.clipboard='unnamedplus'

-- keymaps

vim.g.mapleader = ' ';

map({ 'n', 'i', 'c', 'v' }, '<C-s>', '<cmd>update<cr>')
map({ 'n' }, '<leader>qq', '<cmd>quit<cr>')

-- lazynvim (package manager)
require('lua/lazynvim')

