require("SetupVim.remap") 
vim.opt.clipboard = "unnamedplus"
require("SetupVim.set")


vim.fn.serverstart(vim.fn.stdpath("run") .. "/nvim-server")

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup("SetupVim.plugins")
