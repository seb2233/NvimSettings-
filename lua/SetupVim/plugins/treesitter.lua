

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,        -- required (doc says no lazy-loading)
  build = ":TSUpdate", -- required (doc recommendation)
  config = function()
    -- Setup (from the doc)
    require("nvim-treesitter").setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
      highlight = {
        enable = true,
      },
    })

    -- Install parsers (from the doc)
    require("nvim-treesitter").install({
      "c",
      "cpp",
      "python",
      "rust",
      "json",
      "java",
      "javascript",
    })
  end,
}

