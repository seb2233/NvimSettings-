
-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.termguicolors = true
vim.opt.undofile = true

vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
-- Indentation
vim.opt.tabstop = 4        -- number of spaces a tab counts for
vim.opt.shiftwidth = 4    -- size of an indent
vim.opt.expandtab = true  -- use spaces instead of tabs
vim.opt.smartindent = true

vim.api.nvim_set_hl(0, "CursorLineNr", {
  fg = "#FF6A00",
  bold = true,
})
-- Line wrapping
vim.opt.wrap = false

-- Cursor
vim.opt.cursorline = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Better scrolling
vim.opt.scrolloff = 8


