--
-- Lars Lerchbacher's neovim config
-- Licensed under the MIT License. See LICENSE file in the root directory.
--


-- Enable the fancy styling (only intended for my riced desktop)
-- should be set to false, if not using a transparent terminal emulator with a pywal generated color scheme
fancyMode = true

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

