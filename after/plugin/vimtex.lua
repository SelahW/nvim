vim.g.vimtex_compiler_latexmk = {
  aux_dir = function()
    return vim.fn.expand('%:t:r') .. "aux"
  end
}
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_zathura_options = '--fork'
