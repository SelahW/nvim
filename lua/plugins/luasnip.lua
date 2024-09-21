return {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = function()
        require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/lua/luasnippets/"})
        require("luasnip").config.set_config({
            -- Auto snippets
            enable_autosnippets = true,
            store_selection_keys = "<Tab>",
            update_events = 'TextChanged,TextChangedI',
        })
    end,
}
