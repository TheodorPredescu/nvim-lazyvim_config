return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jdtls = {
        settings = {
          java = {
            diagnostics = {
              enabled = true, -- Enable diagnostics
              showInCodeLens = true, -- Optional, shows diagnostics in code lens
            },
          },
        },
      },
    },
  },
}
