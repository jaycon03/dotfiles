-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	--colortheme
	use { "catppuccin/nvim", as = "catppuccin" }
	--parser
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	--lsp
	use 'neovim/nvim-lspconfig'
	--auto completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	--file manager
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		}
	}
	--latex engine
	use "lervag/vimtex"
	--autocompletion for parenthesis etc.
	use 'jiangmiao/auto-pairs'
	--Snippets
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v<CurrentMajor>.*",
		-- install jsregexp (optional!:).
		run = "make install_jsregexp"
	})
	--vim command suggestions/autocompletion
	use	'gelguy/wilder.nvim'

	--debugger
	use 'mfussenegger/nvim-dap'
	use 'nvim-telescope/telescope-dap.nvim'
	use 'rcarriga/nvim-dap-ui'
	use 'theHamsta/nvim-dap-virtual-text'
	--Mason
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- :MasonUpdate updates registry contents
	}
	--Harpoon
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	--lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
		--undotree
	}
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'
end)
