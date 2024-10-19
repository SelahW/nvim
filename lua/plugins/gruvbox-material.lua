return {
    {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_background = 'medium'
        vim.g.gruvbox_material_foreground = 'mix'
        vim.g.gruvbox_material_better_performance = 1
        vim.g.gruvbox_material_visual = 'green background'
        vim.cmd.colorscheme('gruvbox-material')
      end
    }
}
