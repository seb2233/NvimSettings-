
-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.undofile = true

vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
-- Indentation
vim.opt.tabstop = 4        -- number of spaces a tab counts for
vim.opt.shiftwidth = 4    -- size of an indent
vim.opt.expandtab = true  -- use spaces instead of tabs
vim.opt.smartindent = true



vim.o.updatetime = 1000 -- 1 second

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    if vim.bo.buftype ~= "" then return end
    if vim.fn.expand("%") == "" then return end
    if not vim.bo.modified then return end

    vim.cmd("silent write")
  end,
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


