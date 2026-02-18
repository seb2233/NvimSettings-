require("SetupVim.remap") 
vim.opt.clipboard = "unnamedplus"
require("SetupVim.set")
require("SetupVim.run")
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})


vim.diagnostic.config({
  virtual_text = true,   -- keep text on the right (set false if unwanted)
  underline = true,      -- REQUIRED
  signs = true,
  severity_sort = true,
})
local function apply_diag_hl()
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
    underline = true,
    sp = "#ff5500",
  })

  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
    underline = true,
    sp = "#ff8800",
  })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = apply_diag_hl,
})

vim.diagnostic.config({
  signs = false,
})
apply_diag_hl()

vim.keymap.set("x", "y", "y`>")
vim.opt.cursorline = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.fn.serverstart(vim.fn.stdpath("run") .. "/nvim-server")

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup("SetupVim.plugins")
