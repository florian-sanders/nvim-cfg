return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "typescript", "css", "jsdoc" },
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
