return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      groups = {
        all = {
          CursorLineNr = {
            fg = "#ff9e64",
            style = "bold",
          },

          -- Strings (light grey)
          String = {
            fg = "#d0d0d0",
          },
          ["@string"] = {
            fg = "#d0d0d0",
          },
          ["@lsp.type.string"] = {
            fg = "#d0d0d0",
          },
        },
      },
    })

    vim.cmd.colorscheme("carbonfox")

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
  underline = true,
  sp = "#ff7000",
})
    vim.opt.number = true
    vim.opt.cursorline = true
    vim.opt.cursorlineopt = "number"
    vim.opt.termguicolors = true
  end,
}
