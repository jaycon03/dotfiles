-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    use {
    	'nvim-telescope/telescope.nvim', tag = '0.1.1',
    	-- or                            , branch = '0.1.x',
    	requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use { "catppuccin/nvim", as = "catppuccin" }
    
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    
    use 'neovim/nvim-lspconfig'
    
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    
    use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons', -- optional
	}
	}

	use "lervag/vimtex"

	use 'jiangmiao/auto-pairs'
    end)
