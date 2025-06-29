--
-- Lars Lerchbacher's neovim config
-- Licensed under the MIT License. See LICENSE file in the root directory.
--


-- Enable changed keymaps
require('keymaps')

-- Enable the plugin manger 
require('plugins/Packer')

-- Enable treesitter (syntax highlighter)
require('plugins/treesitter')

-- Enable the colorizer
vim.cmd("let g:colorizer_auto_color = 1")


-- Enable line numbers
vim.cmd("set number")

