--
-- my configuration for the 
-- packer plugin manager by wbthomas
-- Licensed under the MIT License. See LICENSE file in the root directory.
--

vim.cmd [[packadd packer.nvim]]

-- Enables/Disables background transparency
local fancyMode = false

return require('packer').startup(
    function(use)

	-- Packer itself
	use 'wbthomason/packer.nvim'

	-- Treesitter
        use { 'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ':TSUpdate' }

	-- Telescope (fuzzy finder)
	use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}

	use { 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' }

	-- LSP configs
	use { 'neovim/nvim-lspconfig' }

	-- python language server
	use { 'microsoft/pyright' }

	-- color theme
	use { 'sainnhe/everforest' }

	-- set the colorscheme
	vim.cmd.colorscheme('everforest')

	if fancyMode then
		-- remove background 
		vim.cmd("highlight Normal guibg=None")
	end 


    end
)
