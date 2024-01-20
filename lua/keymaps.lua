local map = vim.keymap.set

vim.g.mapleader = ' ';

map({ 'n', 'i', 'c', 'v' }, '<C-s>', '<cmd>update<cr>')
map({ 'n' }, '<leader>qq', '<cmd>bufdo bd <bar> quit<cr>')
map({ 'n' }, '<C-d>', '<C-d>zz')
map({ 'n' }, '<C-u>', '<C-u>zz')
