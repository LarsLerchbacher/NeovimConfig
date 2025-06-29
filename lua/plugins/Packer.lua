--
-- my configuration for the 
-- packer plugin manager by wbthomas
-- Licensed under the MIT License. See LICENSE file in the root directory.
--


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)

	-- Packer itself
	use 'wbthomason/packer.nvim'

	-- Treesitter
        use { 'nvim-treesitter/nvim-treesitter', branch = 'master', lazy=false, build = ':TSUpdate' }

	-- Telescope (fuzzy finder)
	use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}

	-- pyWal generated color scheme
	use { 'RedsXDD/neopywal.nvim', as='neopywal' }
	
	if fancyMode == true
	then
		-- neoPyWal setup
		local neopywal = require("neopywal")
		neopywal.setup()
		vim.cmd.colorscheme("neopywal")

		-- remove background 
		vim.cmd("highlight Normal guibg=None")
	end

    end
)
