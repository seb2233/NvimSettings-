return {
"EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      style = "carbonfox", -- night | storm | moon | day
    })

    vim.cmd.colorscheme("carbonfox")
    
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ff9e64" })
    -- Tree-sitter
vim.api.nvim_set_hl(0, "@string", { fg = "#ffffff" })

-- Legacy Vim syntax
vim.api.nvim_set_hl(0, "String", { fg = "#ffffff" })

-- LSP semantic tokens (VERY important for C, Rust, etc.)
vim.api.nvim_set_hl(0, "@lsp.type.string", { fg = "#ffffff" })  

end,
}





