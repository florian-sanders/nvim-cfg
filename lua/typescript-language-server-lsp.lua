local lspconfig = require("lspconfig")
local HOME = os.getenv("HOME")

require("lspconfig").tsserver.setup({
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  on_new_config = function(new_config, new_root_dir)
    -- TODO: improve this by not using hardcoded values
    if string.find(new_root_dir, "test") then
      new_config.init_options = {
        hostInfo = "neovim",
        tsserver = {
          path = HOME .. "/.local/lib/node_modules/typescript/lib/tsserver.js",
        },
      }
    end
  end,
  init_options = {
    hostInfo = "neovim",
  },
  root_dir = lspconfig.util.root_pattern(
    "tsconfig-nvim.json",
    "tsconfig.json",
    "package.json",
    "jsconfig.json",
    ".git"
  ),
  single_file_support = true,
  preferences = {
    importModuleSpecifierEnding = "js",
  },
})
