-- Abbreviations used in the LuaSnip docs
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
local in_align = function()
    return vim.fn['vimtex#env#is_inside']("align*")
end

return {
    -- \frac
    s({trig="ff", snippetType="autosnippet"},
    fmta(
    "\\frac{<>}{<>}",
    {
        i(1),
        i(2)
    }),
    {condition = in_mathzone}
    ),
    -- Inline math
    s({trig="$", snippetType="autosnippet"},
    fmta(
    "\\(<>\\) <>",
    {
        i(1),
        i(2)
    })
    ),
    -- Display math
    s({trig="dm", snippetType="autosnippet"},
    fmta([[
    \[
    <>
    \]
    <>]],
    {
        i(1),
        i(2)
    })
    ),
    -- Align entry
    s({trig="==", snippetType="autosnippet"},
    fmta([[
    &<> <> \\
    ]],
    {
        i(1),
        i(2)
    }),
    {condition = in_align}),
    -- Underscore
    s({trig="_", wordTrig = false, snippetType="autosnippet"},
    fmta([[
    _{<>}<>
    ]],
    {
        i(1),
        i(2)
    }),
    {condition = in_mathzone}),
    -- Superscript
    s({trig="^", wordTrig = false, snippetType="autosnippet"},
    fmta([[
    ^{<>}<>
    ]],
    {
        i(1),
        i(2)
    }),
    {condition = in_mathzone})
}
