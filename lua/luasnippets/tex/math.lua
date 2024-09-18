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
    s({trig="mm", snippetType="autosnippet"},
    fmta(
    "\\(<>\\) <>",
    {
        i(1),
        i(2)
    })
    ),
    -- Another inline math
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
    -- Align stuff
    s({trig="==", snippetType="autosnippet"},
    fmta([[
    &<> <> \\
    ]],
    {
        i(1),
        i(2)
    }),
    {condition = in_align}),
    -- Matrix
    s({trig="mat", snippetType="autosnippet"},
    fmta([[
    \begin{bmatrix}
    <> & <> \\
    <> & <> \\
    \end{bmatrix}
    ]],
    {
        i(1),
        i(2),
        i(3),
        i(4)
    }),
    {condition = in_mathzone}),
    -- Cases
    s({trig="cas", snippetType="autosnippet"},
    fmta([[
    \begin{cases}
    <> & \text{if <>}\\
    <> & \text{if <>}\\
    \end{cases}
    ]],
    {
        i(1),
        i(2),
        i(3),
        i(4)
    }),
    {condition = in_mathzone})
}
