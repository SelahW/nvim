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
require('lualine').setup {
    options = { theme = 'gruvbox' }
}
require("Theo.remap")
require("Theo.packer")
require("Theo.set")
require("autoclose")
require("luasnip").config.set_config({
    -- Auto snippets
    enable_autosnippets = true,
    store_selection_keys = "<Tab>",
    update_events = 'TextChanged,TextChangedI',
})
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/lua/luasnippets/"})
