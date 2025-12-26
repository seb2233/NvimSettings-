
return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",          -- C / C++
          "pyright",         -- Python
          "rust_analyzer",   -- Rust
          "lua_ls",          -- Lua
          "ts_ls",        -- JavaScript / TypeScript
        },
      })
    end,
  },
}
