local lspconfig  = require('lspconfig')

require'lspconfig'.tsserver.setup{
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  init_options = {
    hostInfo = "neovim"
  },
  root_dir = lspconfig.util.root_pattern("tsconfig-nvim.json", "tsconfig.json", "package.json", "jsconfig.json", ".git"),
  single_file_support = true,
  logVerbosity = 'verbose',
  preferences = {
    importModuleSpecifierEnding = "js",
  },
}
