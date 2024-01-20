local map = vim.keymap.set

-- options
vim.opt.clipboard='unnamedplus'

-- keymaps

vim.g.mapleader = ' ';

map({ 'n', 'i', 'c', 'v' }, '<C-s>', '<cmd>update<cr>')
-- keymaps
map({ 'n' }, '<leader>qq', '<cmd>quit<cr>')

-- lazynvim (package manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
{
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
}, 
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "typescript", "css" },
          sync_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
	  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "gn",
      scope_incremental = "gs",
      node_decremental = "gS",
    },
  },
        })
    end
}
})
