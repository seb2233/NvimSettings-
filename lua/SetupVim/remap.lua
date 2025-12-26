
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
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { silent = true })

-- next / previous tab
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { silent = true })

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


