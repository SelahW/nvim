-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }}

    use('sainnhe/gruvbox-material')
    vim.g.gruvbox_material_background = 'soft'
    vim.g.gruvbox_material_better_performance = 1
    vim.cmd.colorscheme("gruvbox-material")

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('lervag/vimtex')
	use('tpope/vim-fugitive')
	use('m4xshen/autoclose.nvim')
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}
	-- LSP Prerequisites
	use('VonHeikemen/lsp-zero.nvim')
	use('neovim/nvim-lspconfig')
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('saadparwaiz1/cmp_luasnip')
	use('hrsh7th/cmp-nvim-lua')
	use('L3MON4D3/LuaSnip')

	use('rafamadriz/friendly-snippets')
end)
