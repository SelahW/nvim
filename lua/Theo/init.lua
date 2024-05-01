-- disable netrw at the very start of your init.lua

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
    side = "right"
  },
  renderer = {
    indent_markers = {
        enable = true
    },
    group_empty = true,
    highlight_git = true,
    icons = {
        show = {
            git = true,
        },
    },
  },
})
require("Theo.remap")
require("Theo.packer")
require("Theo.set")
require("autoclose").setup({
   keys = {
      ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {} },
   },
})
