return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({ ensure_installed = { "black", "isort", "prettier" } })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pyright" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("*", { capabilities = capabilities })
      vim.lsp.enable({ "lua_ls", "ts_ls", "pyright" })
    end,
  },
}
