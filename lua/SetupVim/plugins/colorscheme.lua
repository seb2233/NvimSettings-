
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night", -- night | storm | moon | day
    })

    vim.cmd.colorscheme("tokyonight")
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "LineNrBelow",  { fg = "#ffffff" })

 
    -- Tree-sitter highlight overrides
    vim.api.nvim_set_hl(0, "@boolean", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "@number",  { fg = "#ffffff" })

    -- (optional) also override legacy groups
    vim.api.nvim_set_hl(0, "Boolean", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "Number",  { fg = "#ffffff" })
  end,
}

