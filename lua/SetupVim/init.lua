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



vim.keymap.set("x", "y", "y`>")
vim.opt.cursorline = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.fn.serverstart(vim.fn.stdpath("run") .. "/nvim-server")

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup("SetupVim.plugins")
