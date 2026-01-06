return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function(_, opts)
    local cmp = require("cmp")

    require("cmp_nvim_lsp")
    require("cmp_buffer")
    require("cmp_path")

    opts.enabled = true

    opts.completion = {
      autocomplete = {
        cmp.TriggerEvent.TextChanged,
        cmp.TriggerEvent.InsertEnter,
      },
    }

    opts.sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "path" },
    }, {
      { name = "buffer" },
    })
  end,
}
