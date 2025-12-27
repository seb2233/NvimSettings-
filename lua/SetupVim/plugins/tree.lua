
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      hijack_netrw = false,

      update_focused_file = {
        enable = false,
      },

      sync_root_with_cwd = false,
      respect_buf_cwd = false,

      actions = {
        open_file = {
          quit_on_open = false,
        },
      },
    })
  end,
}

