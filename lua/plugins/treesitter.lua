--
-- Treesitter config
-- Licensed under the MIT License. See LICENSE file in the root directory.
--

require('nvim-treesitter.configs').setup {

	ensure_installed = { "c", "lua", "python", "html", "css", "markdown", "vim", "vimdoc"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	}
}
