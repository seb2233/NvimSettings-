
vim.g.mapleader = " "
--project move 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pf", function()
  require("telescope.builtin").find_files()
end)

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end)

vim.keymap.set("n", "<C-c>", function() --this is control c
  require("telescope.builtin").git_files()
end, { desc = "Telescope git files" })

vim.keymap.set("n", "<leader>ps", function()
  require("telescope.builtin").grep_string({
    search = vim.fn.input("Grep > "),
  })
end)

--treenav
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { silent = true })

-- CMake keymaps
-- CMake (Terminal.app + tmux safe)
vim.keymap.set("n", "<F1>", "<cmd>CMakeQuickStart<CR>")
vim.keymap.set("n", "<F2>", "<cmd>CMakeGenerate!<CR>")
vim.keymap.set("n", "<F3>", "<cmd>CMakeBuild<CR>")
vim.keymap.set("n", "<F4>", "<cmd>CMakeSelectCwd<CR>")
vim.keymap.set("n", "<F5>", "<cmd>CMakeRun<CR>")
vim.keymap.set("n", "<F6>", "<cmd>CMakeDebug<CR>")
vim.keymap.set("n", "<F7>", "<cmd>CMakeSelectLaunchTarget<CR>")




--move btw windows 

-- Window navigation (Option / Alt + hjkl)
vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Move to right window" })


-- Resize splits
vim.keymap.set("n", "<M-S-h>", "<C-w><", { desc = "Resize window left" })
vim.keymap.set("n", "<M-S-l>", "<C-w>>", { desc = "Resize window right" })
vim.keymap.set("n", "<M-S-j>", "<C-w>-", { desc = "Resize window down" })
vim.keymap.set("n", "<M-S-k>", "<C-w>+", { desc = "Resize window up" })


--dap debugger

-- DAP core controls
vim.keymap.set("n", "<F8>", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.continue() end
end)

vim.keymap.set("n", "<F10>", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.step_over() end
end)


vim.keymap.set("n", "<Leader>zq", function()
  require("dap").terminate()
end, { desc = "DAP terminate" })

vim.keymap.set("n", "]b", function()
  require("dap").goto_breakpoint()
end)

vim.keymap.set("n", "[b", function()
  require("dap").goto_breakpoint(-1)
end)

vim.keymap.set("n", "<F9>", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.step_into() end
end)

vim.keymap.set("n", "<F12>", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.step_out() end
end)

vim.keymap.set("n", "<Leader>b", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.toggle_breakpoint() end
end)

vim.keymap.set("n", "<Leader>B", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.set_breakpoint() end
end)

vim.keymap.set("n", "<Leader>lp", function()
  local ok, dap = pcall(require, "dap")
  if not ok then return end
  dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)

vim.keymap.set("n", "<Leader>zr", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.repl.open() end
end)

vim.keymap.set("n", "<Leader>zl", function()
  local ok, dap = pcall(require, "dap")
  if ok then dap.run_last() end
end)

-- DAP widgets
vim.keymap.set({ "n", "v" }, "<Leader>zh", function()
  local ok, widgets = pcall(require, "dap.ui.widgets")
  if ok then widgets.hover() end
end)

vim.keymap.set({ "n", "v" }, "<Leader>zp", function()
  local ok, widgets = pcall(require, "dap.ui.widgets")
  if ok then widgets.preview() end
end)

vim.keymap.set("n", "<Leader>zf", function()
  local ok, widgets = pcall(require, "dap.ui.widgets")
  if ok then widgets.centered_float(widgets.frames) end
end)

vim.keymap.set("n", "<Leader>zs", function()
  local ok, widgets = pcall(require, "dap.ui.widgets")
  if ok then widgets.centered_float(widgets.scopes) end
end)



--run code
local run = require("SetupVim.run")

vim.keymap.set("n", "<leader>r", run.run_file, { desc = "Run current file" })


vim.keymap.set("n", "<leader>p", function()
  vim.fn.jobstart({
    "tmux",
    "display-popup",
    "-E",
    "-w", "80%",
    "-h", "80%",
    "~/.local/bin/tmux-sessionizer",
  })
end, { desc = "tmux sessionizer popup" })

--commands to create tabs and move around
-- create new tab
vim.keymap.set("n", "<leader>n", ":tabnew<CR>", { silent = true })

-- next / previous tab
vim.keymap.set("n", "<leader>l", ":tabnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>h", ":tabprevious<CR>", { silent = true })

-- close current tab
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { silent = true })






--useful tricks 
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d') -- delete without copying 


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Q", "<nop>")
--lsp command to jump to function 
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)

--undotree commands
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

--Git integration
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

--highlight will dissapear if you use /word
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>")

--harpoon commands
vim.keymap.set("n", "<leader>a", function()
  require("harpoon"):list():add()
end)
--harpoon commands
vim.keymap.set("n", "<leader>s", function()
  require("harpoon"):list():remove()
end)


vim.keymap.set("n", "<leader>h", function()
  local harpoon = require("harpoon")
   harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>1", function()
  require("harpoon"):list():select(1)
end)

vim.keymap.set("n", "<leader>2", function()
  require("harpoon"):list():select(2)
end)

vim.keymap.set("n", "<leader>3", function()
  require("harpoon"):list():select(3)
end)

vim.keymap.set("n", "<leader>4", function()
  require("harpoon"):list():select(4)
end)


